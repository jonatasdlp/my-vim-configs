call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
Plug 'tpope/vim-rails'
Plug 'kien/ctrlp.vim'
Plug 'ddollar/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/bufkill.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/EasyGrep'
Plug 'vim-ruby/vim-ruby'
Plug 'mattn/emmet-vim/'
Plug 'othree/html5.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'jgdavey/tslime.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'ap/vim-css-color'
Plug 'itspriddle/vim-jquery'
Plug 'tpope/vim-endwise'
Plug 'dag/vim-fish'
Plug 'maksimr/vim-jsbeautify'
Plug 'einars/js-beautify'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'othree/es.next.syntax.vim'

call plug#end()

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set nowrap
set background=dark
set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
set t_Co=256
set number
set shell=/bin/bash

let g:NERDTreeWinPos = "left"
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
let g:user_emmet_mode='a' "enable all function in all mode.
let NERDTreeIgnore=['\www', '\~$']
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly

" Vimbrant configs
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray

" Required:
filetype plugin indent on

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
