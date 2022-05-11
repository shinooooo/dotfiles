# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#general
HISTFILE=~/.zsh_history

#terminal
alias ..='cd ..'

#neovim
alias v='nvim'

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
