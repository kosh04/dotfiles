# dotfiles [![Build Status](https://travis-ci.com/kosh04/dotfiles.svg?token=dfMzF3xay83G8zNxrhrj&branch=master)](https://travis-ci.com/kosh04/dotfiles)

My homedir dotfiles and scripts ☕

## Installation

```sh
$ git clone --bare git@github.com:kosh04/dotfiles.git ~/.dotfiles.git
$ alias dotfiles='git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME' # or using bin/dotfiles
$ alias dotfiles >> ~/.bashrc
$ dotfiles config status.showUntrackedFiles no
$ dotfiles checkout
```

## Tips

### Using Tig (text-mode interface for Git)

```sh
$ dotfiles config alias.tig '!tig'
$ dotfiles tig
```

### Exclude files

```sh
$ edit ~/.dotfiles.git/info/exclude
```

### XDG Base Directory Specificatio

- https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
- [https://wiki.archlinux.jp/index.php/XDG Base Directory サポート](https://wiki.archlinux.jp/index.php/XDG_Base_Directory_%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88)

```sh
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME =$HOME/.cache
XDG_DATA_HOME  =$HOME/.local/share
XDG_RUNTIME_DIR=#unknown
XDG_DATA_DIRS  =/usr/local/share:/usr/share
XDG_CONFIG_DIRS=/etc/xdg
```

## Other Links

- [dotfiles.github.io](https://dotfiles.github.io/)
- [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
- https://github.com/kosh04/.emacs.d Emacs 設定ファイルはこちら
- https://wiki.debian.org/DotFilesList