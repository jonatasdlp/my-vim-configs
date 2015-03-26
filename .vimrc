" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif
if has('vim_starting')
set nocompatible " Be iMproved
" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'tpope/vim-rails'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'ddollar/nerdcommenter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'vim-scripts/bufkill.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/EasyGrep'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'mattn/emmet-vim/'
NeoBundle 'othree/html5.vim'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'jgdavey/tslime.vim'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'ap/vim-css-color'
NeoBundle 'itspriddle/vim-jquery'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'dag/vim-fish'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'einars/js-beautify'
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
call neobundle#end()
" Required:
filetype plugin indent on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" Configs
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set nowrap
set guifont=Liberation\ Mono\ for\ Powerline\ 10
set background=dark
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
set laststatus+=1
set t_Co=256
set number
set shell=/bin/bash
let g:NERDTreeWinPos = "left"
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:user_emmet_mode='a' "enable all function in all mode.
let NERDTreeIgnore=['\www', '\~$']
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
" Vimbrant configs
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray
" Define solarized only gvim
if has("gui_running")
  colorscheme solarized
endif
" Key maps
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :split<CR>
nmap <F4> :tabnew<CR>
nmap <F6> :/\
nmap <F12> :retab<CR>
nmap <F8> :TagbarToggle<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" JS Beutify
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" backup to ~/.tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
