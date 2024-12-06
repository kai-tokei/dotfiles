eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(pyenv init --path)"

#alias g++=g++-13
alias ls="ls --color"
alias pytest="python3 -m pytest"
alias slic3r="/Applications/Slic3r.app/Contents/MacOS/slic3r"

alias shutdown="sudo shutdown -h now"

alias wttr='() { curl -H "Accept-Language: ${LANG%_*}" wttr.in/"${1:-Tokyo}" }'
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/bin:$PATH

export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
