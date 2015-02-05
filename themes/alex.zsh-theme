# help from code.tutsplus.com/tutorials/how-to-customize-your-command-prompt--net-24083
function get_pwd() {
  echo "${PWD/$HOME/~}"
}

# get line history number help from http://superuser.com/questions/379496/how-to-get-zsh-previous-commands-history-number-in-prompt
LAST_EVENT_CODE='%?'
HISTORY_EVENT_NUMBER=%(?.%{$fg[green]%}.%{$bg[red]%})[$[HISTCMD-1]]%{$reset_color%}

function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    export TIMER_TIME="${timer_show}s"
    unset timer
  fi
}


. /usr/local/lib/python2.7/sitepackages/powerline/bindings/zsh/powerline.zsh
