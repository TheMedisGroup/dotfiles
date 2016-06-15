
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

eval "$(hub alias -s)"

#
# adding thefuck to command iterm2
#
eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"
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
export PATH=$PATH:$HOME/bin
