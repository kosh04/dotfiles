#!/bin/bash
set -eux

export GIT_DIR=$HOME/.dotfiles.git
export GIT_WORK_TREE=$HOME

mkdir ${BACKUP_DIR=$HOME/.dotfiles.bak}

# git checkout にて上書き保存される可能性のあるファイル一覧を
# ${BACKUP_DIR}/ 以下にバックアップする
git diff --cached --name-only --diff-filter=D |\
	xargs -I '{}' bash -c "install -vD {} ${BACKUP_DIR}/{} && rm {}"
