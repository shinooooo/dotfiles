#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='nvim'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

# Cargo Path
export PATH="$HOME/.cargo/bin:$PATH"

# Go Path
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# rbenv
eval "$(rbenv init -)"

# conda
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/shinooooo/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/shinooooo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/shinooooo/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/shinooooo/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
