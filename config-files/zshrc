ZSH=$HOME/.oh-my-zsh

ZSH_THEME="super"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# golang shenengingans

# export GOROOT=/usr/local/go
# export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/code/go-projects
export PATH=$PATH:$GOPATH/bin

# other

ulimit -Sn 4096

# aliases

alias cdc="cd ~/code"

# utilities
alias open-ports="lsof -Pan -iTCP -sTCP:LISTEN"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias fresh-install="rm -r node_modules && rm package-lock.json && npm install"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export EDITOR=`which vim`

# tokens
source ~/.tokens
