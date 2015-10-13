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

inoremap jj <Esc>

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
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'juneedahamed/svnj.vim'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
call plug#end()

let g:rehash256 = 1

" Clear the t_ut terminal option
set t_ut=

" YCM settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
