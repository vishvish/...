# Vish's Vim Setup

This is all designed to be managed by my dotfiles manager, `dotdotdot`.

The `.vimrc` file lives in `<dotfiles>/lib/files/vimrc` and will be symlinked to `~/.vimrc` by the dotdotdot script.

Vim bundles and other supporting code live in `<dotfiles>/lib/vim`. All bundles are autoloaded by **Pathogen.vim** and should be added as git submodules into `all-bundles` and whichever ones required should be symlinked in `bundles`.

How to add a vim bundle: (e.g. Nerdtree)

	cd all-bundles
	git submodule add git@github.com:scrooloose/nerdtree.git
	cd ../bundles
	ln -s ../all-bundles/nerdtree

## Shortcuts

`F1` toggles the Nerdtree pane

Double-click a file in Nerdtree to open it.

Select a file and press `t` to open in a new Vim tab.

Select a file and press `i` to open in a new pane underneath the current one.

Select a file and press `s` to open in a new pane to the side of the current one.

`\` followed by `cc` will comment the current line.

`N\cc` where `N` is a number, will comment the next `N` lines.

`\cu` and `N\cu` will uncomment as above.

`F4` toggles paste mode, so that pasting code will preserve its formatting.

There are shortcuts to help you when pressing `Q` and `W` instead of `q` or `w`.

## Powerline

You will want to install this in order to get the lovely status bar formats.

See [https://powerline.readthedocs.org/en/latest/installation/osx.html#installation-osx](https://powerline.readthedocs.org/en/latest/installation/osx.html#installation-osx) for tips.

I suggest:

	brew install python
	pip install --user git+git://github.com/Lokaltog/powerline

If this fails, try:

	pip install git+git://github.com/Lokaltog/powerline



And then edit the Powerline bootup line (190 at time of writing) in `.vimrc` to the correct path for your user.

## More

I suggest you read `.vimrc` yourself. And add tons of shortcuts to help you.


