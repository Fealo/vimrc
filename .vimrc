syntax on
set shiftwidth=4
set wrap
set ruler
set number
set noerrorbells
set visualbell

set nocompatible
filetype plugin on 
runtime macros/matchit.vim
"let g:material_theme_style = 'darker'
"colorscheme material
"
"change cursor on insert mode.
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"remap key to nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>
"cursorline and color
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
"   PLUGINS:
"   
"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()


Plug 'sheerun/vim-polyglot'
Plug 'preservim/NERDTree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'kaicataldo/material.vim' , { 'branch': 'main' }
Plug 'jupyter-vim/jupyter-vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()

set pythonthreedll=/usr/local/bin/python3


""st color
"if (has('termguicolors'))
"  set termguicolors
"endif
"colorscheme material
"let g:material_theme_style = 'darker'

