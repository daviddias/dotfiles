ZSH=$HOME/.oh-my-zsh

ZSH_THEME="super"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# golang shenengingans

export GOROOT=/usr/local/go
export GOPATH=$HOME/code/go-projects
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

# other

ulimit -Sn 4096

# alias

alias cdc="cd ~/code"


# utilities
alias open-ports="lsof -Pan -iTCP -sTCP:LISTEN"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export GH_TOKEN="eb13a984ede88233ef91777b4f4f40a98ad5a012"
export EDITOR=`which vim`
