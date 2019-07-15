#!/bin/bash
set -eux

export GIT_DIR=$HOME/.dotfiles.git
export GIT_WORK_TREE=$HOME

backup_archive=~/.dotfiles.bakup.tar

# git checkout がエラー終了した場合に実行する
# 上書きされる可能性のあるファイル一覧をアーカイブしてバックアップ
git diff --cached --name-only --diff-filter=D | \
    tar cvf ${backup_archive} --files-from -

# バックアップの解凍
# tar xf ${backup_archive} -C /path/to/dest_dir

git checkout --force
