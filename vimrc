" Basic settings {{{
set number                    " Enable line numbers
set ruler                     " Turn on the ruler
syntax on                     " Syntax highlighting
set tabstop=2
set shiftwidth=2
set incsearch
set cursorline
set ignorecase
let mapleader=","
"}}}

" Plugins {{{
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-fugitive'
Plugin 'oplatek/Conque-Shell'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-endwise'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'mileszs/ack.vim'
Plugin 'joequery/Stupid-EasyMotion'
Plugin 'qstrahl/vim-matchmaker'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'

call vundle#end()            " required
filetype plugin indent on    " required
"}}}

"AirLine {{{
let g:airline#extensions#tabline#enabled = 1
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set ambiwidth=double
let g:airline_theme='badwolf'
"}}}

"Mappings {{{
nnoremap <C-t> :CtrlPTag<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap ; :
nnoremap <C-q> :q<cr>
inoremap jk <Esc>
noremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <F2> :set rnu!<CR>
nnoremap <F3> :set nu!<CR>
imap <c-d> <esc>ddi
imap <c-u> <esc>viwUi
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel"
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel'
nnoremap - ddp
nnoremap _ kddpk
nnoremap H ^
nnoremap L $
inoremap <c-u> <esc>viwU<esc>ea
nnoremap <leader>e :source %<cr>
nnoremap <leader>p :execute "rightbelow tabe " . bufname('#')<cr>
""}}}

"Movement Mapping {{{
onoremap p i(
" }}}

"autocommands {{{
autocmd BufWritePre *.html :normal gg=G
"}}}

"autocommand groups {{{
augroup testgroup
	"autocmd
augroup END
"}}}

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

match Error / $/
" }}}

"json compatibility {{{
nnoremap <leader>j :%!python -m json.tool<CR>
autocmd BufNewFile,BufRead *.json set ft=javascript
"}}}

"UPPER and lowercase conversion {{{
nnoremap g^ gUiW
nnoremap gv guiW
"}}}

"No backup files {{{
set nobackup
set nowritebackup
set noswapfile
"}}}

"Theme {{{
colorscheme molokai
set guifont=Monaco:h13
"}}}

"NerdTree {{{
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>m :NERDTreeToggle<CR>
"}}}

"trailing chars {{{
set list listchars=tab:\ \ ,trail:.,extends:>,precedes:<
"}}}

"Cursor {{{
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"}}}

"Conque windows {{{
let g:ConqueTerm_InsertOnEnter = 1
nnoremap <silent> <Leader>r :execute 'ConqueTermSplit pry'<CR>
nnoremap <silent> <Leader>b :execute 'ConqueTermSplit /bin/bash --login'<CR>
"}}}

"Git Gutter {{{
let g:gitgutter_realtime=1
let g:gitgutter_eager=1
"}}}

"MactchMacker {{{
"let g:matchmaker_enable_startup = 1
"}}}

"Auoto Completion {{{
"}}}
