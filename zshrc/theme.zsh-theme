# oh-my-zsh Theme
# inspired by Bureau

### Git [±master ▾●]

ZSH_THEME_GIT_PROMPT_PREFIX="$fg[red]git:%{$reset_color%}[%{$fg_bold[green]%}±%{$reset_color%}%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[cyan]%}▴%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[magenta]%}▾%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg_bold[green]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg_bold[yellow]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}●%{$reset_color%}"

bureau_git_branch () {
  ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
  echo "${ref#refs/heads/}"
}

bureau_git_status () {
  _INDEX=$(command git status --porcelain -b 2> /dev/null)
  _STATUS=""
  if $(echo "$_INDEX" | grep '^[AMRD]. ' &> /dev/null); then
    _STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_STAGED"
  fi
  if $(echo "$_INDEX" | grep '^.[MTD] ' &> /dev/null); then
    _STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_UNSTAGED"
  fi
  if $(echo "$_INDEX" | command grep -E '^\?\? ' &> /dev/null); then
    _STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_UNTRACKED"
  fi
  if $(echo "$_INDEX" | grep '^UU ' &> /dev/null); then
    _STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_UNMERGED"
  fi
  if $(command git rev-parse --verify refs/stash >/dev/null 2>&1); then
    _STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_STASHED"
  fi
  if $(echo "$_INDEX" | grep '^## .*ahead' &> /dev/null); then
    _STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_AHEAD"
  fi
  if $(echo "$_INDEX" | grep '^## .*behind' &> /dev/null); then
    _STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_BEHIND"
  fi
  if $(echo "$_INDEX" | grep '^## .*diverged' &> /dev/null); then
    _STATUS="$_STATUS$ZSH_THEME_GIT_PROMPT_DIVERGED"
  fi

  echo $_STATUS
}

bureau_git_prompt () {
  # if [[ $COUNTER_GIT -ne 10 ]]; then
  #   COUNTER_GIT=$(($COUNTER_GIT+1))
  #   echo $COUNTER_GIT
  #   return 0
  # fi
  # COUNTER_GIT=0
  local _branch=$(bureau_git_branch)
  local _result=""
  if [[ "${_branch}x" != "x" ]]; then
    local _status=$(bureau_git_status)
    _result="$ZSH_THEME_GIT_PROMPT_PREFIX$_branch"
    if [[ "${_status}x" != "x" ]]; then
      _result="$_result $_status"
    fi
    _result="$_result$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
  echo $_result
}

_HOST_EXITCODE="$fg[blue]@${HOST}%{$reset_color%}"

host_or_exitcode_prompt () {
    if [[ $? -eq 0 ]]; then
        _HOST_EXITCODE="$fg[yellow]@${HOST}%{$reset_color%}"
    else
        _HOST_EXITCODE="$fg[red]@${HOST}%{$reset_color%}%{$fg[red]%}[%? <==]%{$reset_color%}"
    fi
    echo $_HOST_EXITCODE
}

get_pwd () {
    echo "${PWD/$HOME/~}"
}

if [[ $EUID -eq 0 ]]; then
  _USERNAME="%{$terminfo[bold]$fg[red]%}%n%{$reset_color%}"
  _LIBERTY="%{$terminfo[bold]$fg[red]%}#%{$reset_color%}"
else
  _USERNAME="%{$terminfo[bold]$fg[green]%}%n%{$reset_color%}"
  _LIBERTY="%{$terminfo[bold]$fg[green]%}$%{$reset_color%}"
fi

_PWD="%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}"
_TIME="%{$fg[green]%}%*%{$reset_color%}"
_UPPER="$fg[cyan]%{$reset_color%}"
_DOWN="$fg[cyan]%{$reset_color%}"

setopt prompt_subst

# Left Prompt
#PROMPT='${_USERNAME}$(host_or_exitcode_prompt) ${_PWD} $(bureau_git_prompt)
#${_TIME} ${_LIBERTY} '

PROMPT='${_USERNAME}$(host_or_exitcode_prompt) ${_PWD}
${_TIME} ${_LIBERTY} '

