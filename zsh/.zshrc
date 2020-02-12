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
zplug "b-ryan/powerline-shell"

# autoload -U promptinit; promptinit
# prompt pure

# completions
fpath=(/usr/local/share/zsh-completions $fpath)

#########
# zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# theme (https://github.com/sindresorhus/pure#zplug)　好みのスキーマをいれてくだされ。
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# タイプ補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
zplug "mollifier/anyframe"
zstyle ":anyframe:selector:" use peco
# cd
zplug "b4b4r07/enhancd", use:init.sh
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

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# alias
source ~/.dotfiles/alias.sh


