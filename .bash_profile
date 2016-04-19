export PATH="$HOME/.rbenv/bin:$PATH"
export LANG=ja_JP.UTF-8
export LANG
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

function _update_ps1() {
   export PS1="$(/usr/bin/python ~/powerline-shell.py $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

alias tn="tmux new-session \; source-file ~/.tmux/new-session"

alias gl='git ls-files | xargs -n1 git --no-pager blame -f -w|grep tsukamoto |wc -l'
alias ll='ls -al'
alias grep='grep --color'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gch='git checkout'
alias gpd='git push denalab'
alias gf='git fetch'
alias gfg='git fetch gitlab'
alias gm='git merge'
alias gmgd='git merge gitlab/devel'
alias gcb='git checkout -b'
alias gs='git status'
alias gg='git log --graph'
alias gpdc='git push denalab HEAD'
alias gche='git checkout'
alias gchd='git checkout devel'
alias gchb='git checkout -b'
alias g='git'

