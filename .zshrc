
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

eval "$(hub alias -s)"

#
# build array of environment config files for sourcing
#

typeset -ga sources
sources+="$HOME/code/dotfiles/antigenrc.zsh"
sources+="$HOME/code/dotfiles/aliases.zsh"


#
# include sources
#

foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end
