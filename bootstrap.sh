#!/usr/bin/env bash

# エラーがあったらそこで即終了、設定していない変数を使ったらエラーにする
set -eu

# is_arm という関数を用意しておく。毎回 uname -m を実行するのは莫迦らしいので、UNAME 環境変数で判断
is_arm() { test "$UNAME" == "arm64"; }

# アーキテクチャ名は UNAME に入れておく
UNAME=`uname -m`

# dotfiles の場所を設定
DOTPATH=$HOME/dotfiles

# このフォルダの取り扱い
if [ ! -d "$DOTPATH" ]; then
  # 初回実行時はリポジトリがないので、clone してくる
  echo "Cloning dotfiles.git ..."
  git clone https://ritsumurakmi@bitbucket.org/ritsumurakmi/dotfiles.git "$DOTPATH"
else
  # すでにフォルダがある時はそのことを表示
  echo "$DOTPATH already downloaded."
fi

cd "$DOTPATH"

# 入っていなければ、コマンドライン・デベロッパツールをインストール
xcode-select -p 1>/dev/null || {
  echo "Installing Command line tools ..."
  xcode-select --install
  # その場合、M1 Mac では Rosetta2 もインストールされていないと思われるので、こちらもインストール
  if is_arm; then
    # ソフトウェアアップデートで Rosetta2 をインストール。面倒なのでライセンス確認クリックをスキップ
    echo "Installing Rosetta2 ..."
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license
  fi
  echo "Please exec ./bootstrap.sh again in $DOTPATH after installing command-line-tools and Rosetta2(M1 Mac only)."
  exit 1
}

# ここにある dotfiles をホームに展開 (.git, .DS_Store は除外。他に除外するものが増えたらここに追記)
echo "Deploying dotfiles ..."
for file in .??*; do
    [[ "$file" = ".git" ]] && continue
    [[ "$file" = ".DS_Store" ]] && continue
    ln -fvns "$DOTPATH/$file" "$HOME/$file"
done

# install homebrew
if ! command -v brew > /dev/null 2>&1; then
  # Install homebrew in Intel Mac or M1 Mac on Rosetta2
  echo "Installing homebrew in /usr/local for Intel or Rosetta2 ..."
  # arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo
  # M1 Mac では /opt/homebrew にネイティブ版をインストール
  if is_arm; then
    echo "Installing homebrew in /opt/homebrew for Arm ..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
fi

# homebrew, cask and mas
if is_arm; then
  echo "brew bundle in Rosetta2 ..."
  cd rosetta2_brew
  # arch --arch x86_64 /usr/local/bin/brew bundle

  # /opt/homebrew/bin のパスを追加
  echo "brew bundle in Arm native ..."
  cd ../arm_brew
  brew bundle -v
  cd ..
else
  echo "brew bundle in Intel ..."
  cd intel_brew
  brew bundle -v
  cd ..
fi
echo

# Install Rust
if ! command -v rustup > /dev/null 2>&1; then
  rustup-init
fi
rustup update
