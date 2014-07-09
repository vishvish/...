# DOT.DOT.DOT

## manage your dotfiles

By default, this comes with ssh and zsh examples, and my tmux configuration, which includes tmux-powerline

### Installation and execution

    git clone git@github.com:vishvish/dotdotdot.git
    
    cd dotdotdot
    
    git submodule init
    
    git submodule update

You ought to have a look at `etc/config.yml` which is where you decide what gets linked and what doesn't.

The program performs four tasks:

1. backs up all the files named in `config.yml`, whether they're symlinks or not as a gzipped tar file into its `backups` directory.

2. removes all the files specified in the config.

3. symlinks all the active files/directories specified in the config.

4. cleans up the backups directory. Number of backups kept are specified at the top of the config. Default is 5.

#### To run

    cd dotdotdot

    ruby dotdotdot.rb

### Homebrew extras

Install the following taps and packages for full functionality:

Taps

homebrew/binary
homebrew/dupes
homebrew/games
homebrew/science
homebrew/versions
thoughtbot/formulae

Packages

git
git-flow
archey
fortune
python
tig
vim
zsh
reattach-to-user-namespace
tmux

### Changelog

1.0 [09 November 2012] Basic release without much documentation.
1.1 [09 July 2014] Upgraded powerline for tmux and vim, improved colours, plugins and tools. More documentation.
