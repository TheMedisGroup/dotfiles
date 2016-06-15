source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme gnzh
antigen theme https://github.com/halfo/lambda-mod-zsh-theme/ lambda-mod
# Tell antigen that you're done.
antigen apply
