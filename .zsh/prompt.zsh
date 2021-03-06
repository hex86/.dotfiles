actionformats='%F{green}[%f'
actionformats+='%s'
actionformats+='%F{yellow}:'
actionformats+='%F{magenta}%b'
actionformats+='%F{green}|'
actionformats+='%F{blue}%a'
actionformats+='%F{green}]'

formats='%F{green}[%f'
formats+='%s'
formats+='%F{yellow}:'
formats+='%F{red}%b'
formats+='%F{green}]'

zstyle ':vcs_info:*' actionformats $actionformats
zstyle ':vcs_info:*' formats $formats
zstyle ':vcs_info:*' branchformat '%b%F{1}:%F{3}%r'

precmd () { vcs_info }

PS1='%F{magenta}['
PS1+='%F{green}%!'
PS1+='%F{magenta}]'
PS1+='%F{blue}['
PS1+='%F{yellow}%1d'
PS1+='%F{blue}]'
PS1+='${vcs_info_msg_0_} '
PS1+='%F{cyan}%#%f '
