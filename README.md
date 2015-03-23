# Vim-Setup

####How to install

To install vim-setup do the following:

it will copy your old setup to `~/.vimrc_old` and `~/.vim_old`

```bash
git clone git@github.com:ajitsing/vim-setup.git
cd vim-setup
sh setup_vim.sh
```

####Confuguration:

#####Basic Settings
```vim
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

"search settings...
set incsearch       "Lookahead as search pattern is specified
set ignorecase      "Ignore case in all searches...
set smartcase       "unless uppercase letters used

set hlsearch        "Highlight all matches
highlight clear Search
highlight       Search    ctermfg=White
set nofoldenable    " disable folding"
```

`let mapleader=","        //leader is ','`

#####Mappings
`IN NORMAL MODE`
```vim
<leader>v     = :set paste!<cr                                   //to toggle paste option
da            = ggdGi                                            //to delete
<leader>n     = :NERDTree<cr>                                    //show nerd tree(side bar)
;             = :                                                //just press ; to enter in command mode
ctrl+q        = :q<cr>                                           //quit vim
<leader>ev    = :vsplit $MYVIMRC<cr>                             //edit vim file in verticle split
<leader>sv    = :source $MYVIMRC<cr>                             //source vim file
F2            = :set rnu!<cr>                                    //toggle relative line number
F3            = :set nu!<cr>                                     //toggle regular line number
<leader>"     = viw<esc>a"<esc>hbi"<esc>lel"                     //surround word with "
<leader>'     = viw<esc>a'<esc>hbi'<esc>lel'                     //surround word with '
-             = ddp                                              //move current line down
_             = kddpk                                            //move current line up
H             = ^                                                //go to start of line
L             = g_                                               //go to end of line
<leader>e     = :source %                                        //source current file
t             = :tabnew<cr                                       //new tab
BACK_SPACE    = :set nohlsearch<cr>:call HLNextOff()<cr>         //turn off search highlight
<leader>p     = :execute "rightbelow tabe " . bufname('#')<cr>   //open last file
<leader>s     = :%s///g<LEFT><LEFT><LEFT>                        //search and replace
<leader>a     = ggvG                                             //select whole file
right-arrow   = :tabnext<cr>                                     //go to next tab
left-arrow    = :tabprevious<cr>                                 //go to prev tab
g^            = gUiW                                             //convert word under cursor to uppercase
gv            = guiW                                             //convert word under cursor to lowercase
```
`IN VISUAL MODE`
```vim
H = ^              //go to start of line
L = g_             //go to end of line
; = :              //enter command mode
```
`IN INSERT MODE`
```vim
ctrl+d    =   ddi      //to delete current line
ctrl+u    =   viwUi    //convert word to uppercase
jk        =  <Esc>     //go to normal mode
```

#####Plugins

```vim
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
```
