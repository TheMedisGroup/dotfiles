

# zsh #
alias s="subl" # starts sublime text
alias ss="subl ." # opens sublime text
alias cl="clear" # clears terminal screen
alias a="atom" # starts atom
alias aa="atom ." # opens atom

alias path='echo $PATH | tr -s ":" "\n"'   # display path for troubleshooting issues
alias disk="df -h ~" # show avalible disk space

alias dotf="cd ~/code/dotfiles/ && atom ." # move to dotfiles directory and opens atom


# git #
alias gd="git diff"
alias gs="git status"
alias ga="git add ."
alias gc="git checkout"
alias gb="git branch"
alias whoops="git reset --hard" # reset for troubleshooting issues
alias gba="git branch -av" # show remote & local branch with the last commit
alias gda="git diff | atom" # opens git diff in atom
alias gds="git diff | subl" # open git diff in st3
alias gbr="git browse" # opens repo in github
alias gcb="git checkout -b" # creates and checkout to a new branch
alias grv="git remote -v" # shows remotes
alias gra="git remote add" # add remote
alias grx="git remote rm" # remove remote
alias gl="git log --all --graph --decorate" # detailed log

# pushes upstream and opens branch in browser
alias gpu="git push --set-upstream origin HEAD && git browse"

# handsome log
alias glog="git log --graph --pretty=format:'%Cred%h%Crest %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# removes local branches that have been merged into master
alias gclean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d"
