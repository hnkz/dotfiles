# make config dir
if [ ! -e "~/.config" ]; then
    mkdir ~/.config
fi

# install font
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# set zsh
cp -r ~/.dotfiles/zsh/.bin ~/.bin

# set tmux
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

# set nvim
ln -sf ./.dotfiles/nvim ~/.config/nvim

# set Alacritty
ln -sf ./alacritty ~/.config/alacritty

