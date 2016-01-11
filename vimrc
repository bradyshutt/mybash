"**STATUS_LINE**"



set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"--FOLD--> PLUGINS 
Plugin 'VundleVim/Vundle.vim'    "Vundle manages Vundle Plugin 'severin-lemaignan/vim-minimap'    "VIM Minimap
Plugin 'https://github.com/scrooloose/nerdtree.git'    "NERDtree
Plugin 'https://github.com/kien/ctrlp.vim.git'    "CTRL-p
Plugin 'http://github.com/sjl/gundo.vim.git'    "GUNDO
Plugin 'https://github.com/majutsushi/tagbar'    "TAGBAR
Plugin 'https://github.com/terryma/vim-multiple-cursors'    "MULTIPLE CURSORS
Plugin 'easymotion/vim-easymotion'    "Easymotion
Plugin 'MarcWeber/vim-addon-mw-utils'    "For Snipmate
Plugin 'tomtom/tlib_vim'    "For Snipmate
Plugin 'garbas/vim-snipmate'    "For Snipmate
Plugin 'honza/vim-snippets'    "For Snipmate
Plugin 'https://github.com/haya14busa/incsearch.vim'  "Better Inc Search
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
"Plugin 'Yggdroot/indentLine'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'https://github.com/jgdavey/tslime.vim.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/vim-scripts/argtextobj.vim.git'
Plugin 'https://github.com/bkad/CamelCaseMotion.git'
Plugin 'https://github.com/benmills/vimux.git'
Plugin 'gcmt/taboo.vim.git'
Plugin 'guns/xterm-color-table.vim.git' 
Plugin 'tpope/vim-vinegar'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
"==ENDFOLD== PLUGINS 

call vundle#end()
filetype plugin indent on
syntax on

set nowrap
let mapleader=','

nnoremap <Leader>i gg=G``<CR> 
nnoremap <Leader>T :TagbarOpen<CR>
nnoremap <leader>r :! clear && ./run.sh<CR>
nnoremap <Leader>u :GundoToggle<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>m :MinimapToggle<CR>
nnoremap <Leader>ve :tabe /home/brady/.vimrc<CR>
nnoremap <Leader>vu :so /home/brady/.vimrc<CR>
nnoremap <Leader>vce :tabe /home/brady/.vim/colors/main.vim<CR>
nnoremap <Leader>vcu :so /home/brady/.vim/colors/main.vim<CR>
nnoremap <Leader><Leader>i :w<CR> :so /home/brady/.vimrc<CR>
nnoremap <Leader><Leader>u :so /home/brady/.vimrc<CR>

nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

nnoremap gth :tabp<CR> 
nnoremap gtl :tabn<CR>
nnoremap gtc :tabclose<CR>
nnoremap gtr :TabooRename 
nnoremap gtn :tabedit<CR>

nnoremap gh :wincmd h<CR>
nnoremap gj :wincmd j<CR>
nnoremap gk :wincmd k<CR>
nnoremap gl :wincmd l<CR>

nnoremap gve :tabe /home/brady/.vimrc<CR>
nnoremap gvu :so /home/brady/.vimrc<CR>
nnoremap g1 :1gt

"splits
nnoremap gwh :topleft vnew<CR>
nnoremap gwj :botright new<CR>
nnoremap gwk :topleft new<CR>
nnoremap gwl :botright vnew<CR>
nnoremap gsh :leftabove vnew<CR>
nnoremap gsl :rightbelow vnew<CR>
nnoremap gsk :leftabove new<CR>
nnoremap gsj :rightbelow new<CR>

let g:tmux_navigator_no_mappings=1
let g:tmux_navigator_save_on_switch=1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

let g:multi_cursor_exit_from_normal_mode =0
let g:multi_cursor_quit_key=';'
let g:multi_cursor_insert_maps ={'j':1}

highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

hi EasyMotionTarget ctermbg=none ctermfg=green
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline=1 " keep cursor column when j,k motion
let g:EasyMotion_use_upper=1
let g:EasyMotion_keys='ASDFGHJKL;QWERTYUIOPZXCVBNM'
let g:EasyMotion_do_mapping = 0 	"Disable default mappings
let g:EasyMotion_enter_jump_first=1
let g:EasyMotion_space_jump_first=1

let g:syntastic_auto_jump = 0
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "level": "warnings"}


map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
map <Leader>s <Plug>(easymotion-s)
map <space> <Plug>(easymotion-s)

"**********************COLORS******************"
let g:indentLine_char='┆'
colo main
set colorcolumn=81


set tabstop=2
set shiftwidth=2
set softtabstop=2 
set expandtab

set number
set cursorline
set wildmenu
set listchars=eol:-

set hlsearch
set incsearch
set ic

set splitbelow
set splitright

noremap ; :
noremap : ;

inoremap jk <esc>
nnoremap M J
nnoremap <C-m> J

noremap J }
noremap K {
noremap L 3w
noremap H 3b
noremap W $
noremap B ^

nnoremap <Leader>. :nohlsearch<CR>


"turn off status line
"set laststatus=0
"set ls=0
"set showtabline
"set tabline=""
"set or change the color of the tabline
hi tablinefill cterm=none ctermbg=7 ctermfg=7 gui=none guibg=blue guifg=7

"**STATUS_LINE**"
"define custom highlight groups
"hi User1 ctermbg=7 ctermfg=17 cterm=none
hi User1 ctermbg=yellow ctermfg=black cterm=bold
hi User2 ctermbg=blue  ctermfg=black  
hi User3 ctermbg=blue  ctermfg=blue  
hi User4 ctermbg=blue   ctermfg=green
hi User5 ctermbg=black  ctermfg=black
hi VertSplit ctermfg=blue ctermbg=blue 

set statusline= 
set statusline+=%3*		"switch to User2 highlight
set statusline+=\ \ \ 		"switch to User2 highlight

set statusline+=%1*		"switch to User2 highlight
set statusline+=%t		"filename
set statusline+=%2*		"switch to User2 highlight
set statusline+=\ \ (%{strlen(&ft)?&ft:'none'})\   " filetypej

set statusline+=%3*  "switch to User3 highlight
set statusline+=%=                         " right align

"set statusline+=%1*  "switch to User3 highlight
set statusline+=%2*  "switch to User3 highlight
set statusline+=\ [%P]\ 

set statusline+=%3*  "switch to User3 highlight
set statusline+=\ \ \ \ \  
"set statusline+=%1*  "switch to User3 highlight
set statusline+=%2*  "switch to User3 highlight
set statusline+=\ Line:\ 
set statusline+=[%l]\ 		"line 

