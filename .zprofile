eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(pyenv init --path)"

alias g++=g++-12
alias ls="ls --color"
alias pytest="python3 -m pytest"

alias shutdown="sudo shutdown -h now"

alias wttr='() { curl -H "Accept-Language: ${LANG%_*}" wttr.in/"${1:-Tokyo}" }'
export PATH=$HOME/.nodebrew/current/bin:$PATH
