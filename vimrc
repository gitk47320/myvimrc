"display row num
set number
set encoding=utf-8
"syntax highlight
syntax on
"colorscheme
colorscheme molokai
set t_Co=256

"display input command
set showcmd
"display cursor location
set ruler

"to display invisible text
set listchars=tab:>\ ,eol:↲

"settings for nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"to display full-width space
autocmd Colorscheme * highlight FullWidthSpace ctermbg=red
autocmd VimEnter * match FullWidthSpace /　/
colorscheme molokai
"settings tab for space
set expandtab
set tabstop=2

"settings file search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

"settings for ctags
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set tags=./tags;~

"yank for clipboard
set clipboard=unnamedplus

"vim-indent-guides for startup
let g:indent_guides_enable_on_vim_startup = 1

" for slim color syntax
autocmd BufRead,BufNewFile *.slim setfiletype slim

"airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"plugin manager for vim
Plugin 'VundleVim/Vundle.vim'
"file manager for vim
Plugin 'scrooloose/nerdtree'
"settings for ruby and ruby on rails
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'w0rp/ale'
Plugin 'junegunn/fzf'
Plugin 'pangloss/vim-javascript'
Plugin 'tomtom/tcomment_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/AnsiEsc.vim'
Plugin 'slim-template/vim-slim'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Color
Plugin 'tomasr/molokai'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
