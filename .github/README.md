# dotfiles [![Build Status](https://app.travis-ci.com/kosh04/dotfiles.svg?branch=master)](https://app.travis-ci.com/kosh04/dotfiles)

My homedir dotfiles and scripts ☕

## Features

- Linux, Darwin compatible (How about Windows? Yes all right ;-)
- Simple installation (No symlink required)
- Support [XDG Base Directory Specification] to keep `$HOME` clean

## Installation

```sh
$ git clone --bare git@github.com:kosh04/dotfiles.git ~/.dotfiles.git
$ alias dotfiles='git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME' # or using bin/dotfiles
$ alias dotfiles >> ~/.bashrc
$ dotfiles config status.showUntrackedFiles no
$ echo "*" >> ~/.dotfiles.git/info/exclude
$ dotfiles checkout
```

## Tips

### 試験的な設定

Git 設定を以下のように変えることで `.dotfiles.git` ディレクトリ内に限って
git コマンドが利用できるようになる。
プロンプト用関数 `__git_ps1` も利用可能。

``` shell
$ dotfiles config core.bare false
$ dotfiles config core.worktree $HOME
```

### Using Tig (text-mode interface for Git)

```sh
$ dotfiles config alias.tig '!tig'
$ dotfiles tig
```

### XDG Base Directory Specification

- https://freedesktop.org/wiki/Specifications/basedir-spec/
- https://wiki.archlinux.org/index.php/XDG_Base_Directory
- [https://wiki.archlinux.jp/index.php/XDG Base Directory サポート](https://wiki.archlinux.jp/index.php/XDG_Base_Directory_%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88)

```sh
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME =$HOME/.cache
XDG_DATA_HOME  =$HOME/.local/share
XDG_RUNTIME_DIR=#unknown (/run/user/<UID> on Linux)
XDG_DATA_DIRS  =/usr/local/share:/usr/share
XDG_CONFIG_DIRS=/etc/xdg
```

## Other Links

- [dotfiles.github.io]
- [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
- https://github.com/kosh04/.emacs.d Emacs 設定ファイルはこちら
- https://wiki.debian.org/DotFilesList

[dotfiles.github.io]:https://dotfiles.github.io/
[XDG Base Directory Specification]:https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
[chezmoi]:https://www.chezmoi.io/
