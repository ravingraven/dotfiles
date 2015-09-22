" Set ignore for ctrlp plugin
set wildignore+=*.o,*.d

" Ignore case in searches
set ignorecase

" When searching for something with upper case, upper case matters.
set smartcase

" Highlight search results
set hlsearch

" Do not move preprocessor directives to start of line
set cinkeys=0{,0},0),:,!^F,o,O,e

" Set enter to add line.
nmap <CR> :a<CR><CR>.<CR>

" F8 Toggles Tagbar
nmap <F8> :TagbarToggle<CR>

" Show linenumbers
set number

":W is :w
:command W w

" Ident is two spaces
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Highlight current line
set cursorline

" Set terminal colour mode
set t_Co=256

colorscheme molokai

" Use plug plugin to load other plugins
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

" Ctrlp mappings and modes
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_root_markers = ['.ctrlp']

" YCM settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
