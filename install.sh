# Rust
curl https://sh.rustup.rs -sSf | sh

# git zsh tmux
if [ "$(uname)" == 'Darwin' ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install zsh
    brew install tmux
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    if [ -e /etc/debian_version ]; then
        apt-get install git
        apt-get install zsh
        apt-get install tmux
    else
        yum -y install git
        yum -y install zsh
        yum -y install tmux
    fi
fi

# Alacritty
git clone https://github.com/jwilm/alacritty.git
cd alacritty
make

# make config dir
mkdir ~/.config

