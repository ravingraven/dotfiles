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

" Set colorcolumn to 80
set colorcolumn=80
"set textwidth=80

":W is :w
:command W w

" Set leader to space
let mapleader = " "

" No swap files
set noswapfile

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
:nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

" Open FZF Buffers
:nnoremap <Leader>b :Buffers<CR>

" Replace XXX wit increment for debuggign purproses
:nnoremap <Leader>i :let i=1 <bar> g/XXX/s//\=i/ <bar> let i=i+1<CR>

" Open file under cursor in new tab
:nnoremap <Leader>o <C-W>gf

" Ident is two spaces
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

:nnoremap <Leader>s :set smartindent tabstop=2 shiftwidth=2 expandtab<CR>
:nnoremap <Leader>t :set smartindent tabstop=4 shiftwidth=4 noexpandtab<CR>

" Autoremove spaces on write
autocmd BufWritePre * %s/\s\+$//e

" No numbers in terminal
autocmd TermOpen * set nonu

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
Plug 'Yggdroot/indentLine'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'kamykn/spelunker.vim'
"Plug 'tjdevries/colorbuddy.nvim'
"Plug 'marko-cerovac/material.nvim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'rhysd/git-messenger.vim'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'dhananjaylatkar/cscope_maps.nvim'
call plug#end()

autocmd TermOpen * IndentLinesDisable

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

"highlight SpelunkerSpellBad cterm=underline ctermfg=247 gui=underline guifg=#9e9e9e
"highlight SpelunkerComplexOrCompoundWord cterm=underline ctermfg=NONE gui=underline guifg=NONE

"let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore build --ignore .repo --ignore .git -g ""'

" Custom command to add debug text to printfs
function! s:AddDebug(text)
  execute "normal o#ifdef DEBUG\nprintf(\"". a:text. "\\n\");\n#endif"
endfunction


" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material

"colorscheme molokai
colorscheme material

:command! -nargs=1 AddDebug call s:AddDebug(<f-args>)
