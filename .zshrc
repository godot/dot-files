if [[ "$TERM" == "dumb" ]]
then
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    unfunction precmd
    unfunction preexec
    PS1='$ '
fi
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
PROJECT_PATHS=(~/projects/nearme ~/projects/ms)

plugins=(git rake rails4 ruby sudo postgres osx brew emacs pj docker)
source $ZSH/oh-my-zsh.sh
source .profile

export CURRENT_PROJECT_PATH=$HOME/.current-project

function chpwd {
    echo $(pwd) >! $CURRENT_PROJECT_PATH
}

current() {
    if [[ -f $CURRENT_PROJECT_PATH ]]; then
        cd "$(cat $CURRENT_PROJECT_PATH)"
    fi
}

current

export PATH=$HOME/bin:/usr/local/Cellar/qt55/5.5.1/bin:/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin:$PATH

export ALTERNATE_EDITOR=""
export TERMINAL='termite'
export EDITOR='emacsclient'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

ssh-add 2>/dev/null

export PIP_REQUIRE_VIRTUALENV=true

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export HOMEBREW_GITHUB_API_TOKEN=a1b57ab3aa2304de0462424017dffb0ce9641754
