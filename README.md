Bryan's Super-Awesome Vimrc
===========================

For the moment I've only included my super-awesome vimrc. My shell profile changes too often to be generally useful.

A few notes:

1. I use NeoVim, in a variety of terminal emulators. I don't use GUI Vims, since I've run into some problems with colorcolumn in particular that don't happen in terminal versions. Oh well.
1. I don't disable the arrow keys. I still don't see the benefit. Sorry.
1. Ruby, lua and python3 are required for some things to work, so make sure your Vim is built accordingly.
1. C build tools are also required.
1. **You need git. Seriously. Don't run this without git.**
1. Use these files in any way you see fit. They're public domain.

Installation
------------

    # vim
    $ curl -L -s http://bit.ly/benglvimrc > ~/.vimrc

    # NeoVim
    $ mkdir -p ~/.config/nvim/init.vim

And then install [one of these fonts](https://github.com/Lokaltog/powerline-fonts) and use it in your terminal app.

The first time you run vim after this, you'll need to run `:PlugInstall` to install the plugins.



@bengl
