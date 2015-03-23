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
