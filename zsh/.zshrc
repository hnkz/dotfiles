# omajinai
autoload -Uz compinit && compinit
setopt auto_list
setopt auto_menu
zstyle ':completion:*:default' menu select=1 
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
bindkey "^[[Z" reverse-menu-complete

# import 
source ~/.zplug/init.zsh
# zplug "b-ryan/powerline-shell"

autoload -U promptinit; promptinit
# prompt pure

# completions
fpath=(/usr/local/share/zsh-completions $fpath)

#########
# zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
# zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting"
# タイプ補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
zplug "mollifier/anyframe"
zstyle ":anyframe:selector:" use peco
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load


##############
# my setting
source ~/.cargo/bin
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

# added by travis gem
[ -f /Users/sugerme/.travis/travis.sh ] && source /Users/sugerme/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sugerme/work/web/liberta/sokuma/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sugerme/work/web/liberta/sokuma/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sugerme/work/web/liberta/sokuma/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sugerme/work/web/liberta/sokuma/google-cloud-sdk/completion.zsh.inc'; fi

# alias
source ~/.dotfiles/alias.sh

# path
if [ -f '/usr/local/opt/binutils/bin/gobjcopy' ]; then
    export PATH="/usr/local/opt/binutils/bin:$PATH"
    alias objcopy gobjcopy
fi

# Installation
if [ ! -f ~/.cargo/bin/exa ]; then
    cargo install exa;
else
    alias ls=exa;
fi

# depot_tools setting
export PATH=$HOME/.depot_tools:$PATH

# golang setting
export PATH=$PATH:/usr/local/go/bin

# import localbash
source ~/.localbash

# anyenv
if [ -d $HOME/.anyenv ]
then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi

