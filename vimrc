" Basic settings {{{
set nocompatible              " Eliminate backwards-compatability
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
filetype on                  " Req'd for vundle
set rtp+=~/.vim/bundle/vundle " Vundle prelude
call vundle#rc()              " ^

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'xolox/vim-misc'
Bundle 'tpope/vim-fugitive'
Bundle 'oplatek/Conque-Shell'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-endwise'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'mileszs/ack.vim'
Bundle 'joequery/Stupid-EasyMotion'
Bundle 'qstrahl/vim-matchmaker'
Bundle 'ervandew/supertab'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'rking/ag.vim'
"}}}

" Post-vundle {{{
filetype plugin indent on     " Req'd for vundle
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
nnoremap <leader>N :call ToggleNumber()<cr>
nnoremap <leader>q :call QuickFixToggle()<cr>
nnoremap <leader>t :call TerminalToggle()<cr>

let g:terminal_is_open = 0

function! TerminalToggle()
	if g:terminal_is_open
		let command_to_quit_terminal_window = g:terminal_window . "wincmd w|:q"
		execute command_to_quit_terminal_window
		let g:terminal_is_open = 0
	else
		:execute 'ConqueTermSplit /bin/bash --login'	
		let g:terminal_is_open = 1
		let g:terminal_window = winnr()
	end
endfunction

let g:quick_fix_is_open = 0

function! QuickFixToggle()
	if g:quick_fix_is_open
		cclose
		let g:quick_fix_is_open = 0
	else
		copen
		let g:quick_fix_is_open = 1
	end
endfunction

function! ToggleNumber()
	if &nu == 1
		set nu!
	elseif &rnu == 1
		set rnu!
	else
		set nu
	endif
endfunction
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
