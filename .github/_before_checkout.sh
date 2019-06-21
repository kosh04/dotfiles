#!/bin/bash
set -eux

export GIT_DIR=$HOME/.dotfiles.git
export GIT_WORK_TREE=$HOME

mkdir ${BACKUP_DIR=$HOME/.dotfiles.bak}

# git checkout がエラー終了した場合に実行する
# 上書きされる可能性のあるファイル一覧を ${BACKUP_DIR}/ 以下に退避させる
git diff --cached --name-only --diff-filter=D |\
	xargs -I '{}' bash -c "install -vD {} ${BACKUP_DIR}/{} && rm {}"
