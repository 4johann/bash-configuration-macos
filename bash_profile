alias ls='ls -G'
alias ll='ls -alh'

export LC_ALL=es_ES.UTF-8
export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GO111MODULE=auto

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH="${HOME}/Library/Flutter/bin:${PATH}"
export GOPATH="${HOME}/Projects/Go"
