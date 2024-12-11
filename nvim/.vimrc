runtime defaults.vim

set nocompatible
set belloff=all
filetype off

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#formatter = 'default'

let g:airline_theme='luna'
let g:ConqueGdb_GdbExe = 'arm-none-eabi-gdb'
let NERDTreeShowHidden=1

 Plugin 'BufOnly.vim'
 Plugin 'morhetz/gruvbox'
 Plugin 'mattn/emmet-vim'
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'powerline/fonts'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'preservim/nerdtree'
 Plugin 'Rykka/InstantRst'
 Plugin 'iamcco/markdown-preview.nvim'
 Plugin 'williamboman/mason.nvim'
 Plugin 'williamboman/mason-lspconfig.nvim'
 Plugin 'neovim/nvim-lspconfig'
 Plugin 'ms-jpq/coq_nvim'
 Plugin 'nvim-lua/plenary.nvim'
 Plugin 'nvim-telescope/telescope.nvim'
 Bundle 'Rykka/riv.vim'


 call vundle#end()            " required
 filetype plugin indent on    " required

set mouse=c

map <F2> :NERDTreeToggle<CR>

"colorscheme amber"
set background=dark

map Ö :copen<CR>
map Ü :cclose<CR>
map ü :cnext<CR>
map ó :cprevious<CR>
map <C-h> :bp<CR>
map <C-l> :bn<CR>
map <C-k> :bd<CR>
map <C-K> :BufOnly<CR>

set tabstop=4
set expandtab
set number

colorscheme gruvbox

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

