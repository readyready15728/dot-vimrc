# dot-vimrc

## .vimrc and any ancillary files

Unless explicitly specified otherwise, all files other than `.vimrc` itself
are to be installed in `$HOME/.vim/`. `.vimrc` itself is of course meant to go
directly into `$HOME`.

I now use vim-plug. `:PlugInstall` should be adequate to take care of
everything.

One important thing I've noticed is that, if this configuration is to be used
on Google Cloud Shell, the following needs to be added to `$HOME/.bashrc` (or
equivalent) to work:

```bash
export TERM=xterm-256color
```

You may as well set the background color in Google Cloud Shell to `#000` then
to avoid the ugly clash that would happen otherwise.
