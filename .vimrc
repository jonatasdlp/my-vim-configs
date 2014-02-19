if has('vim_starting')
	set nocompatible               " Be iMproved
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

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

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
" vim-scripts repos

" ...

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

" Configs
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set nowrap
set guifont=Liberation\ Mono\ for\ Powerline\ 10
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set background=dark
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
let g:NERDTreeWinPos = "right"
set laststatus+=1
set t_Co=256
syntax on

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

" backup to ~/.tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
