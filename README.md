Bryan's Super-Awesome Vimrc
===========================

For the moment I've only included my super-awesome vimrc. My shell profile changes too often to be useful.

A few notes:

1. I use Vim 7.3, in iTerm2 or gnome-terminal, depending on what platform. I don't use GUI Vims, since I've run into some problems with colorcolumn in particular that don't happen in terminal versions. Oh well. Real programmers never leave the terminal, right?
2. I don't disable the arrow keys. I still don't see the benefit. Sorry.
3. Ruby, lua, python3 and C build tools are required for some things to work, so make sure your Vim is built accordingly.
4. **You need git. Seriously. Don't run this without git.**
5. Use these files in any way you see fit. They're public domain.

Features
--------

* A slew of plugins managed by NeoBundle:
  * Vimshell
  * Airline
  * TagBar
  * NERDTree (with NERDTreeTabs!)
  * NeoComplete and NeoSnippet
  * Fugitive
  * Indent Guides
  * CtrlP
  * Multiple Cursors
  * Matrix Screensaver, just for fun
  * Some other ones. Check the "Bundles" section in .vimrc.
* Installs all these plugins on the first run automatically. No extra install scripts.
* Uses a few sensible key mappings.

Installation
------------

    $ curl -L -s http://bit.ly/benglvimrc > ~/.vimrc

And then install [one of these fonts](https://github.com/Lokaltog/powerline-fonts) and use it in your terminal app.

The first time you run vim after this, it will install all of its plugins and then quit.



@bengl
