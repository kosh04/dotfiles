# -*- mode: shell-script -*-

alias bye=logout
alias gdb-dashboard='gdb --command=~/.local/share/gdb-dashboard/.gdbinit'
alias em='emacsclient -t'
alias diff='diff --strip-trailing-cr -up'
alias diff-dir='diff -uprN'
#alias top='top -c -d1'
alias stow-dir='cd ${STOW_DIR?undefined}'
#alias cht=cheat.sh
cht() { curl "cheat.sh/${1}"; }
# 別物コマンドな気がするが一応
alias tldr=cheat.sh

# alias ag='ag --width=256'
# or `| cut -c1-256`

if command -v ip &>/dev/null; then
    alias ip='ip --color=auto'
fi

# TODO: .config/youtube-dl/config
# TODO: --embed-chapters (yt-dlp+m4a)
alias youtube-dl-audio='youtube-dl --extract-audio -f bestaudio[ext=m4a] --add-metadata --embed-thumbnail --keep-video'
alias youtube-dl-opus='youtube-dl --extract-audio -f bestaudio[acodec=opus] --add-metadata --keep-video'

alias ffprobe-show-streams='ffprobe -v quiet -show_streams -print_format json'
alias ffprobe-show-duration='ffprobe -v quiet -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 -sexagesimal'

# html2text
alias lynx-dump='lynx -dump'

# readline dump-function
alias bind-functions='bind -p | egrep -v "^#|self-insert|do-lowercase-version|digit-argument" | sort'

alias brokensymlinks='find . -type l -print0 | xargs -0 file | grep "broken symbolic link"'
