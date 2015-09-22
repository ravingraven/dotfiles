"set ignore for ctrlp
set wildignore+=*.o,*.d
"ignore case in searches
set ignorecase
"when searching for something with upper case, upper case matters.
set smartcase
"not vi compatible mode
set nocompatible
"highlight search results
set hlsearch

"do not move preprocessor directives to start of line
set cinkeys=0{,0},0),:,!^F,o,O,e

"set enter to add line.
nmap <CR> :a<CR><CR>.<CR>

nmap <F8> :TagbarToggle<CR>

"set relative number in normal mode and absolute in insert.
"autocmd InsertEnter * silent! :set norelativenumber
"autocmd InsertEnter * silent! :set number
"autocmd InsertLeave,BufNewFile,VimEnter * silent! :set relativenumber
set number

":W is :w
:command W w

"ident is two spaces
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set t_Co=256

colorscheme molokai
"colorscheme itg_flat

"execute pathogen#infect()

call plug#begin('~/.vim/plugged')

Plug 'nixprime/cpsm'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()

let g:rehash256 = 1

set t_ut=

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_root_markers = ['.ctrlp']

let g:ycm_complete_in_comments = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
