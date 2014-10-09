# The BASICS
export TERM="xterm-256color"
export PATH=/usr/local/bin:~/git/homebrew/bin:~/git/homebrew/sbin:~/git/homebrew/share/npm/bin:$PATH
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export TMPDIR=${HOME}/git/tmp

# Use Clang as default compiler
export CC=clang
#export CFLAGS=-Qunused arguments
#export CPPFLAGS=-Qunused-arguments
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${HOMEBREW_PREFIX}/lib

# Begin Homebrew

# export HOMEBREW_TEMP=/${HOME}/git/tmp
export HOMEBREW_PREFIX=~/git/homebrew

# If stupid enough to ever use Boxen again, stop Boxen installing broken builds
# on my machine
export HOMEBREW_BUILD_FROM_SOURCE=1
export RUBY_BUILD_SKIP_MIRROR=1

# hack to shut homebrew up
export PATH=~/git/homebrew/bin:$PATH

# To use Homebrew's directories rather than ~/.rbenv
# export RBENV_ROOT=/Users/vish/git/homebrew/var/rbenv

# Fix compiler library for homebrew
export LDFLAGS="$LDFLAGS -L$HOMEBREW_PREFIX/lib -L/Users/vish/git/homebrew/opt/libxml2/lib -L/Users/vish/git/homebrew/opt/libxslt/lib"
export CPPFLAGS="-I/Users/vish/git/homebrew/opt/libxml2/include -I/Users/vish/git/homebrew/opt/libxslt/include"

#Add texlive
export PATH=/usr/local/texlive/2012/bin/x86_64-darwin:${PATH}

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add Dart SDK
#export PATH=$PATH:~/Applications/IDE/dart/dart-sdk/bin

# Add Amazon EB tools
# export PATH=$PATH:/Users/vish/git/utils/AWS-ElasticBeanstalk-CLI-2.3.1/eb/macosx/python2.7

# Add Vertx
#export PATH=$PATH:/Users/vish/git/external/vert.x-1.3.1.final/bin
#export JRUBY_HOME=/Users/vish/.rvm/rubies/jruby-1.7.5

# Fix memory errors
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M"
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512M"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set home page for Lynx
export WWW_HOME=http://www.google.com/

# Jruby with Ruby 2
#export JRUBY_OPTS=--2.0

# Go lang
#export GOROOT=/Users/vish/git/homebrew/Cellar/go/1.1.2
export GOPATH=~/git/projects/go
export PATH=$GOPATH/bin:${PATH}

# Home bin folder
export PATH=$PATH:~/.bin

# Add Google depot tools
# export PATH=$PATH:Z/git/external/depot_tools

# Setup HAXE
export HAXE_STD_PATH="/Users/vish/git/homebrew/lib/haxe/std"

# Add Python bin
export PATH=${HOME}/Library/Python/2.7/bin:${PATH}

# jRebel for Scala
export SCALATRA_JREBEL=~/git/utils/jrebel/jrebel.jar

# Anything else JVM-related
# Java 1.7 Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0.jdk/Contents/Home

# Java 1.8 Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home

# Maven
export M2_HOME=${HOME}/git/homebrew/Cellar/maven/3.2.1/libexec
export PATH=$PATH:$M2_HOME/bin

# Postgres.app
# PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

# prevent NVM losing installs on upgrade
export NVM_DIR=~/.nvm

# Teamcity options
export TEAMCITY_SERVER_MEM_OPTS="-Xmx750m -XX:MaxPermSize=270m -XX:MaxPermSize=64m"

# GNU coreutils
PATH="/Users/vish/git/homebrew/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/Users/vish/git/homebrew/opt/coreutils/libexec/gnuman:$MANPATH"
