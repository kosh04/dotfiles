#!/bin/bash
set -eux

export GIT_DIR=$HOME/.dotfiles.git
export GIT_WORK_TREE=$HOME

mkdir -p "${BACKUP_DIR=~/.dotfiles.bak}"

# git checkout が失敗する場合は
# 上書きされる可能性のあるファイル一覧のバックアップをとる
git checkout 2>&1 |\
    grep $'^\t'   |\
    cut -c 2-     |\
    tar cf - -T - |\
    tar xvf - -C "${BACKUP_DIR}"

git checkout --force

