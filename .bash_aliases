###############################################################################
#
# Aliases
#
###############################################################################

#alias vim='/usr/local/bin/mvim -v'
#alias vi='/usr/local/bin/mvim -v'
alias vi=vim

alias enode="~/Documents/Code/Node/node-webkit.app/Contents/MacOS/node-webkit ~/Documents/Senior-Design\ \(GIT\)/Center\ Stack/EcoCAR\ Project/"
alias xnode="~/Documents/Code/Node/node-webkit.app/Contents/MacOS/node-webkit"
alias gotoaws="ssh -i ~/.ssh/ctailor-key-pair-east.pem ubuntu@ec2-54-236-68-255.compute-1.amazonaws.com"
alias gotoeb="ssh -i /Users/chirag/.ssh/ctailor-key-pair-east.pem ec2-user@18.212.100.154"
alias gotostocks="ssh -i ~/.ssh/ctailor-key-pair-east.pem ubuntu@ec2-52-90-198-3.compute-1.amazonaws.com"

alias hstart="/usr/local/Cellar/hadoop/2.6.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.6.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/stop-dfs.sh"
# alias startopentsdb="sh ~/Documents/School/research/energy/start-opentsdb.sh ctailor3@mimosa40.cc.gatech.edu"
alias startopentsdb="sh ~/Documents/projects/energy/start-opentsdb.sh ctailor3@mimosa40.cc.gatech.edu"

alias junk="cd ~/Documents/junk"
alias projects="cd ~/Documents/Projects"
alias parqr="cd ~/Documents/Projects/parqr-flask"
alias ag="cd ~/Documents/Projects/assign_guard"
alias price="cd ~/Documents/Projects/PriceLearner"
alias interviews="cd ~/Documents/School/Interviews"
alias mlai="cd ~/Documents/Projects/mlai"
alias masters="cd ~/Documents/School/Masters/"
alias quant="cd ~/Documents/Projects/QuantWork"
alias mas="cd ~/Documents/School/Masters/cs8803-MAS"
alias str="cd ~/Documents/School/Masters/cs8803-STR"
alias gta='cd ~/Documents/School/Masters/gta'
alias dva="cd ~/Documents/School/Masters/cse6242"
alias dl="cd ~/Documents/School/Masters/tensorflow/tensorflow/examples/udacity"
alias rldm="cd ~/Documents/School/Masters/cs8803-RLDM"
alias ai="cd ~/Documents/School/Masters/cs6601"
alias hrank="cd ~/Documents/Interview/Hackerrank"
alias leet="cd ~/Documents/Interview/leet"

# alias draco="ssh chirag@192.168.0.21 -p 2222"


# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gpo='git pull origin'
alias gpod='git pull origin develop'
alias gpom='git pull origin master'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }
