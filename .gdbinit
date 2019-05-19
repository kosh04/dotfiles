# File: .gdbinit
# Usage: source ~/.gdbinit

set history save on
set history size 10000
set history filename ~/.cache/.gdb_history

set print static-members off
set print symbol-filename on
#set charset ASCII
#set follow-fork-mode child

# set print pretty on
# set print object on
# set print static-members on
# set print vtbl on
# set print demangle on
# set demangle-style gnu-v3
# set print sevenbit-strings off   

set disassembly-flavor intel

define typeof
  whatis $arg0
end
document typeof
Print data type of expression EXP (alias to `whatis').
end

#add-auto-load-safe-path /path/to/.gdbinit
set auto-load safe-path /

# On 10.12 (Sierra) or later with SIP
set startup-with-shell off
