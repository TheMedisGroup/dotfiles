# ---- #
# ruby #
# ---- #

alias be="bundle exec"
alias bxe="bundle exec rake"
alias rdbm="bundle exec rake db:migrate"

# --- #
# git #
# --- #

alias gd="git diff"
alias gs="git status"
alias ga="git add"
alias gc="git checkout"
alias whoops="git reset --hard"

alias gl="git log --all --graph --decorate"      # detailed log
alias grv="git remote -v"                        # show remotes
alias gbr="git browse"                           # open repo on github
alias gcb="git checkout -b"                      # create and checkout to new branch
alias glc="git shortlog --summary --numbered"    # print contributors by # of commits

# pushes upstream and opens branch in browser
alias gpu="git push --set-upstream origin HEAD && git browse"

# better git log
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# better git branch
alias gb='for c in `git branch|perl -pe s/^..//`;do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $c|head -n 1`\\t$c;done|sort -r'

# removes local branches that have been merged into master
alias gclean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d"

# ----- #
# other #
# ----- #

alias l="ls -lahFG"                        # lists all with hidden files in readable sizes
alias lt="ls -lahctr"                      # lists sorted by date /most recent last / shows change time
alias path='echo $PATH | tr -s ":" "\n"'   # display path for troubleshooting
alias disk="df -h ~"                       # show disk space
alias psr="ps aux | ag ruby"               # show ruby processes

alias ..="cd .."
alias s="subl"
alias ss="subl ."
alias a="atom" # starts atom
alias aa="atom ." # opens atom
alias cl="clear"

alias cdp="cd ~/projects"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias temp="cd ~/projects/temp"
alias cdc="cd ~/code"
alias cde="cd ~/exercism"

# better tree
alias tre="tree -aC -I '.git' --dirsfirst "$@" | less -FRNX;"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
