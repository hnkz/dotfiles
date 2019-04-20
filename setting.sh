# make config dir
if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

# set zsh
cp -r ~/.dotfiles/zsh/.bin ~/.bin
cp ~/.dotfiles/zsh/agnoster-time.zsh-theme ~/.oh-my-zsh/themes

# set tmux
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

# set nvim
if [ ! -d ~/.config/nvim ]; then
    mkdir ~/.config/nvim
fi
cp nvim/* ~/.config/nvim/

# set Alacritty
if [ ! -d ~/.config/alacritty ]; then
    mkdir ~/.config/alacritty
fi
cp alacritty/alacritty.yml ~/.config/alacritty/
