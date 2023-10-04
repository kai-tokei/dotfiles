if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'
#
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/usr/libexec/path_helper)"
eval "$(/usr/libexec/path_helper)"
eval "$(pyenv init -)"

export PATH=/opt/homebrew/bin:$PATH
export USER="rmurakam"
export MAIL="rmurakam@student.42tokyo.jp"

alias ccw="cc -Wall -Wextra -Werror"
alias sl="ls"
USER=murakamitadashi
export USER
MAIL=rmurakam@student.42.fr
export MAIL
USER=murakamitadashi
export USER
MAIL=rmurakam@student.42.fr
export MAIL

export PS1="%t %~ $ "

alias norm="norminette -R CheckForbiddenSourceHeader"

# export TERM=xterm-color256
