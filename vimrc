" Stuff for Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin management with Vundle
Plugin 'gmarik/Vundle.vim'

" Color schemes
Plugin 'altercation/vim-colors-solarized'

" git plugin
Plugin 'tpope/vim-fugitive'

" automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'Raimondi/delimitMate'

" presents a tree for opening files
Plugin 'scrooloose/nerdtree.git'

" Smart Tabline
Plugin 'vim-airline/vim-airline'

" Syntax files
Plugin 'sudar/vim-arduino-syntax'

" automatic session management
Plugin 'xolox/vim-misc.git'
Plugin 'xolox/vim-session.git'

" Smart code commenting
Plugin 'tomtom/tcomment_vim.git'

" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Stuff for tags
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'preservim/tagbar'

" YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()

syntax enable

" Set colors
" Appearance
set background=dark
set t_Co=256
" let g:solarized_termtrans=1
let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
" let g:solarized_visibility="high"
" colorscheme base16-monokai
colorscheme solarized

filetype plugin indent on


" vim-session
let g:session_default_name = '.vim-session'
let g:session_autosave='yes'
let g:session_autoload = 'yes'
let g:session_directory='./'

" settings for SnipMate
let g:snipMate = { 'snippet_version' : 1 }

" settings for YCM
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_goto_buffer_command = 'split-or-existing-window'

" General
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set cindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

set cursorline cursorcolumn
set showmode
set hidden
set modelines=0

" Advanced
set ruler

set undolevels=1000
set backspace=indent,eol,start

" Mappings
let mapleader=","
command! Q q
command! W w
map <leader>b :TagbarToggle<Enter>
map <leader>n :tabnew<cr>
map <leader>x :q<cr>
map <leader>o :NERDTree<cr>
nnoremap <leader>gd :tab YcmCompleter GoToDefinition<cr>
nnoremap <leader>gc :tab YcmCompleter GoToDeclaration<cr>
nnoremap <leader>gi :tab YcmCompleter GoToInclude<cr>

