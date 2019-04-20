"set clipboard=unnamed
set hls
syntax on
set number
set title
set ambiwidth=double
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
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
inoremap <S-Tab> <C-d>
" ctags config
nnoremap <C-j> g<C-j>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
" common keymap
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap s+ <C-w>+
nnoremap s- <C-w>-
nnoremap s< <C-w><
nnoremap s> <C-w>>
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
tnoremap <Esc> <C-\><C-n>
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set ambiwidth=double

" ctags tagbar
set tags=.tags;~
nnoremap <silent> <C-K><C-T> :TagbarToggle<CR>

