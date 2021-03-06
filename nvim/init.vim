" set clipboard=unnamed
set hls
filetype on
set number
set title
set ambiwidth=double
set expandtab
set tabstop=4
filetype plugin indent on
set shiftwidth=4
set nrformats-=octal
set hidden
set history=50
set wrapscan
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
set noswapfile
set tags=<tags_path>
inoremap <C-h> <ESC>
map gc <ESC>:tabnew<CR>
inoremap <S-Tab> <C-d>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
" common keymap
set fileformats=unix,dos,mac
set fileencodings=utf-8

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set ambiwidth=double

" ctags setting
autocmd BufNewFile,BufRead * source ~/.config/nvim/ctags.vim

" dein
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand("~/.config/nvim/")
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  " call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" syntax
syntax on

" auto complete
autocmd BufNewFile,BufRead * source ~/.config/nvim/auto.vim
