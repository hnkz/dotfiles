# Installation

install() {
    if [ "$(uname)" = 'Darwin' ]; then

    elif [ "$(expr substr $(uname -s) 1 5)" = 'Linux' ]; then
        if ! dpkg -s $1 1>/dev/null; then sudo apt -y install $1; fi
    fi
}

if [ "$(uname)" = 'Darwin' ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
install git
install zsh
install tmux
install curl
install wget
install build-essential
install libbz2-dev
install libdb-dev
install libreadline-dev
install libffi-dev
install libgdbm-dev
install liblzma-dev
install libncursesw5-dev
install libsqlite3-dev
install libssl-dev
install zlib1g-dev
install uuid-dev
install tk-dev
install llvm
install clang
install clangd-10
install ca-certificates

## anyenv
if [ ! -d ~/.anyenv ]; then
    git clone https://github.com/anyenv/anyenv ~/.anyenv
    ~/.anyenv/bin/anyenv install --init
fi
### nodenv
if [ ! -d ~/.anyenv/envs/nodenv ]; then
    ~/.anyenv/bin/anyenv install nodenv
fi
### pyenv
if [ ! -d ~/.anyenv/envs/pyenv ]; then
    ~/.anyenv/bin/anyenv install pyenv
fi

## nvim
if ! which nvim 1>/dev/null; then
    sudo apt-add-repository ppa:neovim-ppa/stable
    sudo apt update
    sudo apt install neovim
fi

## Rust
if [ ! -d ~/.cargo ]; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

## cargo tools
if [ ! -f ~/.cargo/bin/exa ]; then
    cargo install exa;
else
    alias ls=exa;
fi

if [ ! -f ~/.cargo/bin/bat ]; then
    cargo install --locked bat;
else
    alias cat=bat;
fi

if [ ! -d ~/.zplug ]; then
## zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
