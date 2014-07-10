# ...

## a simple dotfiles manager...

### ...and my own configurations, too

Written for my own use, YMMV.

Basically, I backup your existing dotfiles and symlink files and directories from this store into place.

My `vim`, `tmux` and `zsh` setups are here, too.

### Get Started

#### Prerequisites

* Homebrew
* Github account + your SSH key added to it
* XCode and CLI tools

#### Install Homebrew packages

Some handy Homebrew taps. Add them.

* `homebrew/binary`
* `homebrew/dupes`
* `homebrew/games`
* `homebrew/science`
* `homebrew/versions`
* `thoughtbot/formulae`


And these packages will get you started.

	brew install git git-flow archey fortune python tig vim zsh reattach-to-user-namespace tmux

#### Install ...

    git clone git@github.com:vishvish/dotdotdot.git
    cd dotdotdot
    git submodule init
    git submodule update --recursive

You ought to have a look at `etc/config.yml` which is where you decide what gets linked and what doesn't.

The program performs four tasks:

1. backs up all the files named in `config.yml`, whether they're symlinks or not as a gzipped tar file into its `backups` directory.

2. removes all the files specified in the config.

3. symlinks all the active files/directories specified in the config.

4. cleans up the backups directory. Number of backups kept are specified at the top of the config. Default is 5.

#### To run

    cd dotdotdot
    ruby dotdotdot.rb

### Changelog

* `1.1` Upgraded powerline for tmux and vim, improved colours, plugins and tools. More documentation. *10 July 2014*
* `1.0` Basic release without much documentation. *09 November 2012*
