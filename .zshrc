if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/usr/libexec/path_helper)"
eval "$(/usr/libexec/path_helper)"
eval "$(pyenv init -)"

# homebrew
export PATH=/opt/homebrew/bin:$PATH

# python
export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
export PATH="/Users/murakamiritsu/Library/Python/3.9/bin:$PATH"

alias ccw="cc -Wall -Wextra -Werror"

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
alias gc="git checkout"
alias gp="git push"
alias gcom="git commit -m"
alias ga="git add"
alias gm="git merge"
precmd () { vcs_info }

# プロンプトカスタマイズ
PROMPT='[%B%F{red}%t%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
%F{yellow}$%f '

alias mvenv="python3 -m venv venv"
alias svenv="source venv/bin/activate"
alias p="python3 ."

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# Xcode
alias xcode="open -a Xcode"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH=$PATH:/Users/murakamitadashi/Library/Android/sdk/platform-tools
export PATH="$PATH":"$HOME/.pub-cache/bin"

# postgre
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# rmを安全なコマンドに代替え
# alias rm=trash

# alias for pico8
alias pico8=/Applications/PICO-8.app/Contents/MacOS/pico8

# graphvis
# g++ -lgvc -lcgraph [ファイル名] // ヘッダを読み込んでコンパイル
export CPLUS_INCLUDE_PATH="/opt/homebrew/include"
export LIBRARY_PATH="/opt/homebrew/lib"
export CMAKE_PREFIX_PATH="/opt/homebrew/Cellar"

