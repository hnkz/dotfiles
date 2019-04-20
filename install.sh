# Rust
curl https://sh.rustup.rs -sSf | sh

# git zsh tmux
if [ "$(uname)" == 'Darwin' ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install zsh
    brew install tmux
    brew install reattach-to-user-namespace
    brew install nvim
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    if [ -e /etc/debian_version ]; then
        sudo apt update
        sudo apt -y install git
        sudo apt -y install zsh
        sudo apt -y install tmux
        sudo apt -y install nvim
        sudo apt install -y --no-install-recommends \
            build-essential \
            curl \
            libbz2-dev \
            libffi-dev \
            liblzma-dev \
            libncurses5-dev \
            libncursesw5-dev \
            libreadline-dev \
            libsqlite3-dev \
            libssl-dev \
            llvm \
            tk-dev \
            wget \
            xz-utils \
            zlib1g-dev \
            ca-certificates \
            git \
            python-dev
    else
        sudo yum -y install git
        sudo yum -y install zsh
        sudo yum -y install tmux
        sudo yum -y install nvim
    fi
fi

# install oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "source ~/.dotfiles/zsh/.zshmine" >> ~/.zshrc

# install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# install font
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
# load setting
source ~/.dotfiles/setting.sh

git clone https://github.com/jwilm/alacritty.git alacritty-src
cd alacritty-src
make binary

# manual specification
echo "install completed!"
