require 'psych'
require 'pathname'

class Dotdotdot

  def initialize
    @backup_directory = File.join(Dir.pwd, 'backups')
    @lib_directory = File.join(Dir.pwd, 'lib')
    @config = Psych::load(File.open('etc/config.yml'))
    
    dotfiles = @config["dotfiles"]
    dotfiles.instance_eval do
      def return_keys(bool)
        self.select { | k, v | v == bool }
      end
    end

    unless File.exist?(@backup_directory)
      Dir.mkdir(@backup_directory)
    end

    @enabled = dotfiles.return_keys(true)
    @disabled = dotfiles.return_keys(false)
    @all = @disabled.merge(@enabled)

    puts "> enabling #{@enabled.keys}"
    puts "> disabling #{@disabled.keys}"

    backup_symlinks
    disable_symlinks
    enable_symlinks
    cleanup_backups
  end

  def backup_symlinks
    backup = String.new
    @all.each do | key, value |
      target = File.join(Dir.home, ".#{Pathname.new(key).basename}")
      if File.exist?(target)
        backup << ".#{Pathname.new(key).basename} "
      end
    end
    unless backup.empty?      
      current = Dir.pwd
      system "cd ~ && tar -czf #{current}/backups/dotdotdot_backup_#{Time.now.to_i}.tgz #{backup}"
    end
  end

  def disable_symlinks
    @all.each do | key, value |
      target = File.join(Dir.home, ".#{Pathname.new(key).basename}")
      if File.symlink?(target)
        File.unlink(target)
      end
    end
  end

  def enable_symlinks
    @enabled.each do | key, value |
      target = File.join(Dir.pwd, "lib", key)
      if File.exist?(target)
        puts "> symlinking .#{Pathname.new(key).basename}"
        File.symlink(target, (File.join(Dir.home, ".#{Pathname.new(key).basename}")))
      end
    end
  end

  def cleanup_backups
    keep =  @config["keep_backups"].to_i
    backup_list = Array.new
    Dir.foreach(@backup_directory) do | file |
      unless File.directory?(File.join(@backup_directory, file))
        backup_list << file
      end
    end
    backup_list.reject! { | file | file[0] == "." } # ditch hidden files
    if backup_list.length > keep
      backup_list.first(backup_list.length - keep).each do | file |
        file = File.join(@backup_directory, file)
        begin
          File.delete(file)          
        rescue Exception => e
          puts e
        end
      end
    end
  end

end

d = Dotdotdot.new
