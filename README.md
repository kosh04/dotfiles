## dotfiles [![Build Status](https://travis-ci.com/kosh04/dotfiles.svg?token=dfMzF3xay83G8zNxrhrj&branch=master)](https://travis-ci.com/kosh04/dotfiles)

`$HOME` 以下に散らかった設定ファイルを一元管理したい

各種設定の適用方法はいくつかある

- シンボリックリンクを貼る e.g. `ln -s SRC DST`
- 環境変数でパス名を指定する e.g. `LESSHISTFILE=$HOME/.cache/.lesshst`
- Include ディレクティブを指定する e.g. `$include ~/dotfiles/.inputrc`

## Environment

- Windows (Cygwin, WSL)
- macOS
- Linux (Debian)

## Install (TODO)

```
$ git clone https://github.com/kosh04/dotfiles.git ~/dotfiles
$ make -C dotfiles
```

あるいは

```
$ curl https://github.com/kosh04/dotfiles/raw/master/bootstrap.sh | sh
```

## bin/?

便利スクリプトいろいろ

## Note

### XDG Base Directory Specificatio

- https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
- https://wiki.archlinux.jp/index.php/XDG_Base_Directory_%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88

```
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME =$HOME/.cache
XDG_DATA_HOME  =$HOME/.local/share
XDG_RUNTIME_DIR=#unknown
XDG_DATA_DIRS  =/usr/local/share:/usr/share
XDG_CONFIG_DIRS=/etc/xdg
```

## Other Links

- https://github.com/kosh04/.emacs.d Emacs 設定ファイルはこちら
- https://wiki.debian.org/DotFilesList
