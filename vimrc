" vimrc 
" Copyright Rob Bultman 
" 

" Junk for vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" stuff being managed by vundle
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'
Bundle 'wincent/Command-T.git'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'xolox/vim-easytags.git'
Bundle 'xolox/vim-misc.git'
Bundle 'tpope/vim-vividchalk.git'
Bundle 'tomasr/molokai.git'
Bundle 'nanotech/jellybeans.vim.git'
Bundle 'chriskempson/base16-vim.git'
Bundle 'Valloric/YouCompleteMe'

" pathogen is gone so comment out these
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

set mouse=a

syntax enable

" set-related settings
set showtabline=2
set history=500
set ruler
set laststatus=2
set cursorline cursorcolumn

" Map :Q map to :q
command! Q q

filetype plugin on

" Appearance 
set background=dark
set t_Co=16
" let g:solarized_termtrans=1
" let g:solarized_termcolors=256
" let g:solarized_termcolors=16
" let g:solarized_contrast="high"
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
" let g:solarized_visibility="high"
" colorscheme base16-monokai
colorscheme solarized

" Mappings 
" map <C-t> :tabnew <Enter> <- conflicts with return from tab stack
let mapleader=","
map <C-o> :NERDTree<Enter>
map <leader>s :TagbarToggle<Enter>
map <leader>t :tabnew<cr>
map <leader>x :q<cr>
map <leader>o :NERDTree<cr>
map <leader>f :CommandT<cr>

