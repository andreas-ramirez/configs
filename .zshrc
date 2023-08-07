# get git branch
autoload -Uz vcs_info
precmd() 
{
vcs_info
}

# style branch output
zstyle ':vcs_info:git:*' formats '%b'

# set custom prompt substitutions
setopt prompt_subst

# remove beeping alert
unsetopt BEEP

# prompt for left
PROMPT='%B%F{166}%n%f%b in %B%F{66}${PWD/#$HOME/~}%b%f
=> '

# right aligned prompt for git info
RPROMPT='%B%F{166}${vcs_info_msg_0_}%f%b'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="/opt/apache-maven/bin:$PATH"

# aliases
alias nvim="/opt/nvim-macos/bin/nvim"

alias ga="git add ."

alias gs="git status"

alias gcm="git commit -m"

alias gra="git restore ."
