# ...

## a simple dotfiles manager...

### ...and my own configurations, too

Written for my own use, YMMV.

Basically, I backup your existing dotfiles and symlink files and directories from this store into place. I'm not suggesting this is fantastic code, but the really interesting stuff is inside the configuration files.

My `vim`, `tmux` and `zsh` setups are here, too.

### Screenshots

##### Colourful Man Pages!

![image](https://raw.githubusercontent.com/vishvish/.../develop/screenshots/colourful-man.gif)

Now, isn't that easier to scan?

---
##### Awesome Git Log!

![image](https://raw.githubusercontent.com/vishvish/.../develop/screenshots/gll.gif)

---

##### Syntax Highlighting as you Type!

![image](https://raw.githubusercontent.com/vishvish/.../develop/screenshots/syntax-highlighting.gif)

See the first command `anon-existent command` is in red. Doesn't exist, so you can spot that way before you finish typing, let alone pressing enter.

The second partial command `gzi` in yellow because it's still possible for a command to start that way (gzip). So keep typing.

And `brew` is green because it's a command.

---

##### Tmux and Vim

![image](https://raw.githubusercontent.com/vishvish/.../develop/screenshots/tmux-vim.png)

iTerm2 full screen with my custom Vim scheme and Tmux visible as a status bar at the bottom.

---


### Still Interested? Get Started.

Or just rifle through the configurations and take whatever you want.

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

* `1.1p1` Nothing major, added syntax highlighting in zsh, added screenshots and improved docs. *11 July 2014*
* `1.1` Upgraded powerline for tmux and vim, improved colours, plugins and tools. More documentation. *10 July 2014*
* `1.0` Basic release without much documentation. *09 November 2012*
