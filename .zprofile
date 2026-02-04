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

export MGFXC_WINE_PATH="/Users/murakamiritsu/.winemonogame"

export PATH="$PATH:/Users/murakamiritsu/.winemonogame"

# Created by `pipx` on 2025-09-11 04:56:23
export PATH="$PATH:/Users/murakamiritsu/.local/bin"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
