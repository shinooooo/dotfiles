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

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
