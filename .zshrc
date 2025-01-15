#Config
export ZSH="/Users/fahmimrezuan/.oh-my-zsh"

ZSH_THEME="mimos"
ENABLE_CORRECTION="true"
ZSH_DISABLE_COMPFIX="true"

#Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

#ALIAS
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpl='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias bfg="java -jar ~/Documents/Project/javafun/bfg/bfg.jar"
alias project="cd ~/Documents/Projects"
alias commax="COMPOSER_MEMORY_LIMIT=-1"
alias bref="vendor/bin/bref"
alias dcr="docker-compose run --rm"
alias sail='bash vendor/bin/sail'
alias dps='docker ps --format="ID\t{{.ID}}\nNAME\t{{.Names}}\nImage\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n
"'
alias k="kubectl"
alias vip-install='venv/bin/pip install -r'
alias ansible-cli="docker run --rm -it -v $(pwd)/ansible:/ansible ansible /bin/sh"
alias ansible-cmd="docker run --rm -it -v $(pwd)/ansible:/ansible ansible"
alias gitlab-runner="cd ~/Downloads && ssh -i "mykey.pem" <Instance IP"
alias ts="tmux source ~/.tmux.conf"
alias nv="nvim"
alias ec=emacsclient
alias renovate="docker run --rm -v "/Users/fahmimrezuan/Documents/Projects/renovate-bot/config.js:/usr/src/app/config.js" renovate/renovate"
alias tf="terraform"
alias ru='rustup'
alias rdb='rust-lldb'
alias argopf="kubectl port-forward svc/argocd-server -n argocd 8080:443"
alias argorun="while true; do argopf; done"
alias qemu64="qemu-system-x86_64"
alias telelog="tsh login --proxy=***REMOVED***:443 --auth=local --user=fahmim"
alias nerdctl="lima nerdctl"
alias rud='rustup doc'
alias rus='rustup show'
alias ruu='rustup update'
alias rdc='rustup doc --core'
alias rds='rustup doc --std'
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform


export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python@3.9/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/Users/fahmimrezuan/.cargo/bin"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export GOPATH=$HOME/go
export PATH="$HOME/go/bin:$PATH"
export GOBIN=$HOME/go/bin/
export PATH="/Users/fahmimrezuan/.rd/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"
export OPENSSL_INCLUDE_DIR="$(brew --prefix openssl)/include"
export OPENSSL_LIB_DIR="$(brew --prefix openssl)/lib"
# pnpm
export PNPM_HOME="/Users/fahmimrezuan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm endexport PATH="/usr/local/opt/node@18/bin:$PATH"
export PATH="/usr/local/opt/mysql@8.0/bin:$PATH"

# CONDA
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fahmimrezuan/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fahmimrezuan/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/fahmimrezuan/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fahmimrezuan/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# CONDA END