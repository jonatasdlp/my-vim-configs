" don't be compatible :)
set nocompatible


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'marijnh/tern_for_vim'
Plug 'bling/vim-airline'

call plug#end()


filetype on


" =============
" Plugin config
" =============

" Syntastic n00b settings :)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" indentLine
let g:indentLine_char = '│'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'


" airline
" NeoVim doesn't currently support changing the font,
" so no patched power/airline fonts :(
let g:airline_powerline_fonts = 1



" ================
" display settings
" ================

" syntax highlighting
syntax enable
colorscheme lyla

" display whitespace
set list
set listchars=eol:¬,tab:»·,extends:>,precedes:<,trail:·

" set indentation to be four spaces
set tabstop=2 softtabstop=2 expandtab shiftwidth=2

" enable autoindent
set autoindent
filetype plugin indent on

" highlight current line
set cursorline

" don't highlight searches
set nohlsearch

" show line numbers
set number

" show relative line numbers
set relativenumber

" enable soft word wrap
set linebreak

" only redraw when needed
set lazyredraw

Guifont DejaVu Sans Mono:h10

" ================
" command settings
" ================

" show autocomplete for commands
set wildmenu

" search while typing
set incsearch



" =============
" misc settings
" =============

" hide buffers
set hidden

" backup settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
