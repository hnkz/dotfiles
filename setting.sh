# make config dir
if [ ! -e "~/.config" ]; then
    mkdir ~/.config
fi

# set zsh
cp -r ~/.dotfiles/zsh/.bin ~/.bin

# set tmux
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

# set nvim
ln -sf ./.dotfiles/nvim ~/.config/nvim

# set Alacritty
ln -sf ./alacritty ~/.config/alacritty

