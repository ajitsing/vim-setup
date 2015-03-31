" Basic settings {{{
highlight Comment term=bold ctermfg=white
set number                    " Enable line numbers
set ruler                     " Turn on the ruler
syntax on                     " Syntax highlighting
set tabstop=2
set shiftwidth=2
set cursorline
set autoindent
set smartindent "auto indentation for blocks
set autoread "auto read buffer when file is changed by other editor
set clipboard=unnamed "yank to system clipboard
set encoding=utf-8
set laststatus=2
set scrolloff=3 "keep minimal number of lines above and below cursor
set visualbell
set showcmd "show command line at the bottom of the screen
set backspace=2 "backspace should behave normally
set expandtab
set cindent "syntax-aware auto indent
set smarttab

"...search settings
set incsearch       "Lookahead as search pattern is specified
set ignorecase      "Ignore case in all searches...
set smartcase       "...unless uppercase letters used

set hlsearch        "Highlight all matches
highlight clear Search
highlight       Search    ctermfg=White
let mapleader=","
set nofoldenable    " disable folding"
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
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'
"Plugin 'wakatime/vim-wakatime'

call vundle#end()            " required
filetype plugin indent on    " required
"}}}

"AirLine {{{
if !exists("g:airline_symbols")
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set ambiwidth=double
let g:airline_theme='powerlineish'

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_section_y = airline#section#create(['%p', '%%'])
let g:airline_section_z = airline#section#create_right(['%l', '%c'])
"}}}

"Mappings {{{
nnoremap <silent><leader>v :set paste!<cr>
nnoremap <silent>da ggdGi
nnoremap <silent><leader>n :NERDTree<CR>
nnoremap ; :
nnoremap <C-q> :q<cr>
nnoremap <silent><leader>ev :vsplit $MYVIMRC<cr>
nnoremap <silent><leader>sv :source $MYVIMRC<cr>
nnoremap <silent><F2> :set rnu!<CR>
nnoremap <silent><F3> :set nu!<CR>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel"
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel'
nnoremap - ddp
nnoremap _ kddpk
nnoremap H ^
nnoremap L g_
nnoremap <leader>e :source %<cr>
nnoremap <silent>t :tabnew<cr>
nnoremap <silent>qt :q<cr>
nnoremap <silent><BS> :set nohlsearch<cr>:call HLNextOff()<cr>
nnoremap <silent><leader>p :execute "rightbelow tabe " . bufname('#')<cr>
nnoremap <leader>s :%s///g<LEFT><LEFT><LEFT>
nnoremap <leader>a ggVG
nnoremap <silent><right> :tabnext<cr>
nnoremap <silent><left> :tabprevious<cr>

vnoremap H ^
vnoremap L g_
vnoremap ; :

inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>viwUi
inoremap <silent>jk <Esc>
inoremap <c-u> <esc>viwU<esc>ea

if has('persistent_undo')
    " Save all undo files in a single location (less messy, more risky)...
    set undodir=$HOME/tmp/.VIM_UNDO_FILES

    " Save a lot of back-history...
    set undolevels=5000

    " Actually switch on persistent undo
    set undofile

endif
""}}}

"Movement Mapping {{{
onoremap p i(
onoremap { i{
onoremap [ i[
onoremap " i"
onoremap ' i'
nnoremap <silent>v' vi'
" }}}

"autocommands {{{
autocmd BufWritePre *.html :normal gg=G
"}}}

"autocommand groups {{{
augroup folding
	autocmd!
	"autocmd BufRead *.rb *.js *.java *.vim *.scala :foldmethod=indent
	"autocmd BufRead *.rb *.js *.java *.vim *.scala :foldignore=
augroup END

augroup VimReload
autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
"}}}

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldenable
	autocmd FileType vim setlocal foldmethod=marker
augroup END
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
"colorscheme molokai
colorscheme summerfruit
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
" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:ycm_use_ultisnips_completer = 1
"}}}
