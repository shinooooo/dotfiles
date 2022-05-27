export EDITOR='nvim'
export VISUAL='nvim'

fish_vi_key_bindings

alias ..='cd ..'

alias v='nvim'

# Cargo Path
set PATH $HOME/.cargo/bin $PATH

# Go Path
set GOPATH $HOME/go
set PATH $PATH $GOPATH/bin

# llvm
set PATH /usr/local/opt/llvm/bin $PATH

starship init fish | source
