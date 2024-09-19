set number            " Show line numbers
set relativenumber     " Relative line numbers
set tabstop=4          " Set tab width to 4 spaces
set expandtab          " Convert tabs to spaces
set shiftwidth=4       " Indent by 4 spaces
set cursorline         " Highlight the current line
syntax on              " Enable syntax highlighting
set background=dark    " Set a dark background theme


call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'      " Plugin for handling parentheses, quotes, etc.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Fuzzy file finder
Plug 'vim-airline/vim-airline' " Status bar

call plug#end()

call plug#begin('~/.config/nvim/plugged')

" NERDTree: File manager
Plug 'preservim/nerdtree'

" CoC: Auto-completion and go-to definitions
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vimspector: Debugging
Plug 'puremourning/vimspector'

call plug#end()

" Enable Python 3 support in Neovim
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.config/nvim/plugged')

" NERDTree: File explorer
Plug 'preservim/nerdtree'

" fzf: Fuzzy file searcher
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

Plug 'ctrlpvim/ctrlp.vim'

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-lua/plenary.nvim'


