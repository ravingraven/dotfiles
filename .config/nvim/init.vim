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

" Remap jj and F1 (damn ThinkPad) to ESC
inoremap jj <Esc>
inoremap <F1> <Esc>

" Show linenumbers
set number

":W is :w
:command W w

" Set leader to space
let mapleader = " "

" Settings for terminal mode

tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Replace under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/



" Ident is two spaces
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Autoremove spaces on write
autocmd BufWritePre * %s/\s\+$//e

" No smart indent for python
au! FileType python setl nosmartindent

" Highlight current line
set cursorline

" Set terminal colour mode
set t_Co=256


" Use plug plugin to load other plugins
call plug#begin('~/.vim/plugged')
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'tpope/vim-sensible'
"Plug 'scrooloose/syntastic'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tomasr/molokai'
Plug 'crusoexia/vim-monokai'
Plug 'reedes/vim-pencil'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'w0rp/ale'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'joeytwiddle/sexy_scroller.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

colorscheme monokai

nmap <C-p> :FZF<CR>

let g:rehash256 = 1

" Clear the t_ut terminal option
set t_ut=

" Use deoplete
let g:deoplete#enable_at_startup = 1

" YCM settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore build --ignore .repo --ignore .git -g ""'

