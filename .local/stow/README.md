# Stow User Packages Directory

https://www.gnu.org/software/stow/

```sh:.profile
export STOW_DIR="$HOME/.local/stow"
```

## Example: build and install emacs

```sh
$ cd ~/src/emacs-x.x/ && ./configure --prefix="$HOME/.local/stow/emacs-x.x" && make install
$ stow -S emacs-x.x
$ ~/.local/bin/emacs
```

## Tips

You can install dotfiles into HOME directory.

```sh
$ stow --target="$HOME" dotfiles.darwin
````
