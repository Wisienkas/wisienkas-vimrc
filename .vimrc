set tabstop=4
set shiftwidth=4
set softtabstop=4
set number

" Statusline Settings
" set statusline=%t " tal of the filename
" set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
" set statusline+=%{&ff}] "file format
" set statusline+=%h      "help file flag
" set statusline+=%m      "modified flag
" set statusline+=%r      "read only flag
" set statusline+=%y      "filetype
" set statusline+=%=      "left/right separator
" set statusline+=%c,     "cursor column
" set statusline+=%l/%L   "cursor line/total lines
" set statusline+=\ %P    "percent through file

set nocompatible
filetype off

" FOR POWERLINE
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage Vundle
" required
Plugin 'gmarik/vundle'

filetype plugin indent on " required
" 
" Brief help 
" :BundleList 			- list configured bundles
" :BundleInstall(!)		- install (update) bundles
" :BundleSearch(!) foo	- search (or refresh cache first) for foo
" :BundleClean(!)		- confirm (or auto-approve) removal of unused bundles
"

" Vundle Plugins Listed here
Plugin 'bling/vim-bufferline'						"Adding a nice bufferline usd together with airline
Plugin 'bling/vim-airline'							"Adding more graphic porn to bufferline
Plugin 'MarcWeber/vim-addon-mw-utils'				"Unsure at the moment
Plugin 'tomtom/tlib_vim'							"unsure
Plugin 'garbas/vim-snipmate'						"For snippets, not used atm
Plugin 'wting/rust.vim'								"For rust syntax
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex' "For LaTeX syntax
Plugin 'sudar/vim-arduino-syntax'						"For Arduino Syntax
Plugin 'git://github.com/Valloric/YouCompleteMe.git' " For c autocomplete

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not ALLOWED
call vundle#end()
filetype off
filetype plugin indent on

" text files
set fileformat=unix
set encoding=utf-8

"Autocomplete with Ctrl + Space
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

colorscheme peachpuff
syntax on

" Setting font for powerline
let g:airline_powerline_fonts=1

" Customizing airline
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_theme='murmur'


" Allow directory configurations
set exrc
set secure


" Filetype specific settings
autocmd Filetype html setlocal shiftwidth=2 tabstop=2 softtabstop=2
