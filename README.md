# dot-vimrc
## .vimrc and any ancillary files

Unless explicitly specified otherwise, all files other than `.vimrc` itself are
to be installed in `$HOME/.vim/`. `.vimrc` itself is of course meant to go
directly into `$HOME`. Note that at least one feature (backup directories) is
currently only configured to work in a Unix(-like) environment. Additionally,
it is necessary to install Vundle as described here:

https://github.com/VundleVim/Vundle.vim

After all is said and done, run `:PluginInstall` in Vim to pull down the
plugins.

As of my inclusion of YouCompleteMe in Vundle packages, there are extra steps
for compiling it that can be found
[here](https://github.com/Valloric/YouCompleteMe). Note that compilation of
YouCompleteMe can be forced to use Python 3 like so (for example; other
options are possible):

```bash
python3 install.py --js-completer --java-completer
```

One other thing I've noticed is that, if this configuration is to be used on
Google Cloud Shell, the following needs to be added to `$HOME/.bashrc` (or
equivalent) to work:

```bash
export TERM=xterm-256color
```

You may as well set the background color in Google Cloud Shell to `#000` then
to avoid the ugly clash that would happen otherwise.
