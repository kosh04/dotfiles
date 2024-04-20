#!/bin/sh

# ホーム配下の日本語ディレクトリを英語化させる
## env LANG=C LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update
env LC_ALL=C xdg-user-dirs-update --force
cat ~/.config/user-dirs.dirs
xdg-user-dir DESKTOP

# Blueman (Bluetooth マネージャー) がインストールされている場合
# 再ログイン時にエラーダイアログが表示される問題を修正する
#> Configured directory for incoming files does not exist
#> Please make sure that directory "/home/[username]/ダウンロード" exists or configure it with blueman-services
gsettings set org.blueman.transfer shared-path "$HOME/Downloads"
