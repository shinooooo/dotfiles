#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#general
HISTFILE=~/.zsh_history

#terminal
alias relogin='exec $SHELL -l'
alias ..='cd ..'
alias a='ls -a'
#git
alias g='git'
alias gp='git push'
alias gs='git status'
alias om='origin master'
alias ga='git add'
alias gsw='git switch'
alias gre='git restore'
alias gc-m='git commit -m'
alias grao='git remote add origin'
alias gp-uo='git push -u origin'

#neovim
alias v='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/shinodayousuke/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/shinodayousuke/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/shinodayousuke/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/shinodayousuke/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# llvm path
export PATH="/usr/local/opt/llvm/bin:$PATH"
