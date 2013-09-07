" vimrc 
" Copyright Rob Bultman 
" 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set mouse=a

syntax enable

" set-related settings
set showtabline=2
set nocompatible
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
colorscheme base16-monokai

" Mappings 
" map <C-t> :tabnew <Enter> <- conflicts with return from tab stack
let mapleader=","
map <C-o> :NERDTree<Enter>
map <leader>s :TagbarToggle<Enter>
map <leader>t :tabnew<cr>
map <leader>x :q<cr>
map <leader>o :NERDTree<cr>
map <leader>f :CommandT<cr>

