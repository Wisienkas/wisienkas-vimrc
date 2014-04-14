set tabstop=4
set shiftwidth=4
set softtabstop=4
set lines=60
set number

set nocompatible
filetype off

" set rtp+=~/.vim/bundle/vundle
" call vundle#rc()

" let vundle manage Vundle
" required
" Bundle 'gmarik/vundle'

filetype plugin indent on " required
" 
" Brief help 
" :BundleList 			- list configured bundles
" :BundleInstall(!)		- install (update) bundles
" :BundleSearch(!) foo	- search (or refresh cache first) for foo
" :BundleClean(!)		- confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not ALLOWED

" text files
set fileformat=unix
set encoding=utf-8

"Autocomplete iwth Ctrl + Space
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>

" C-tag
map <f12> :!ctags -R .<cr>

" Nerdtree set default left side
let g:NERFTreeWinPos = "left"
" toggling Nerdtree
nmap <silent> <F3> :NERDTreeToggle<CR>

" Adding easy navigating for windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
