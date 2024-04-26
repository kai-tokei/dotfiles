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

# export PS1="%t %~ $ "

alias norm="norminette -R CheckForbiddenSourceHeader"

# export TERM=xterm-color256
. ~/z/z.sh
alias j="z"

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

# vnev
alias mvenv="python3 -m venv venv"
alias svenv="source venv/bin/activate"
alias p="python3 ."

alias xcode="open -a Xcode"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH=$PATH:/Users/murakamitadashi/Library/Android/sdk/platform-tools
export PATH="$PATH":"$HOME/.pub-cache/bin"

eval "$(rbenv init - zsh)"

export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
