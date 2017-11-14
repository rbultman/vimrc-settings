" vimrc
" Copyright Rob Bultman
"

" Junk for vundle - not sure how much of this is needed
set nocompatible
filetype off
" set rtp+=~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" stuff being managed by vundle
" Plugin management with Vundle
Plugin 'gmarik/Vundle.vim'
" syntax auto completion
Plugin 'Valloric/YouCompleteMe'
" misc stuff used by other plugins from xolox
Plugin 'xolox/vim-misc.git'
" git plugin
Plugin 'tpope/vim-fugitive'
" put a list of the current tags in a sidebar
Plugin 'majutsushi/tagbar'
" automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'Raimondi/delimitMate'
" plugin to make handle comments easier
Plugin 'tomtom/tcomment_vim.git'
" presents a tree for opening files
Plugin 'scrooloose/nerdtree.git'
" buffer management
" Plugin 'jlanzarotta/bufexplorer'
" automatic session management
Plugin 'xolox/vim-session.git'
" make node programming easier.
Plugin 'moll/vim-node'
" Javscript related
" Enhanced JavaScript Syntax for Vim
Plugin 'jelera/vim-javascript-syntax.git'
" a vim plug-in which provides support for expanding abbreviations similar to emmet
Plugin 'mattn/emmet-vim.git'
" Code-related plugins
" Syntastic
  Plugin 'scrooloose/syntastic'
" React Native
  Plugin 'mxw/vim-jsx'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'tpope/vim-sensible'
  Plugin 'HerringtonDarkholme/yats.vim'
  Plugin 'Quramy/tsuquyomi'
  Plugin 'vim-airline/vim-airline'
  Plugin 'sindresorhus/vim-xo'
" swift stuff
Plugin 'keith/swift.git'
" cscope macros
" Plugin 'cscope_macros.vim'
" see definitions like source insight
" Plugin 'wesleyche/SrcExpl.git'
" The 'Tag List' plugin is a source code browser plugin for Vim and
" provides an overview of the structure of source code files and allows
" you to efficiently browse through source code files for different
" programming languages.
" Plugin 'taglist.vim'
" Command-T - A file finder
" Colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-vividchalk.git'
Plugin 'tomasr/molokai.git'
Plugin 'nanotech/jellybeans.vim.git'
Plugin 'chriskempson/base16-vim.git'
Plugin 'vim-scripts/muzzl.vim'
Plugin 'xterm16.vim'
" Syntax Files
Plugin 'xevz/vim-squirrel'
Plugin 'sirtaj/vim-openscad'
Plugin 'sudar/vim-arduino-syntax'
" tab stuff
Plugin 'mkitt/tabline.vim'
" Required
call vundle#end()
filetype plugin indent on

" Syntax Files
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

set mouse=a

syntax enable

" set-related settings
set showtabline=2
set history=500
set ruler
set laststatus=2
set cursorline cursorcolumn
" Highlight all words from the last search
set incsearch
set showmatch
set hls
" keep some lines above and below the cursor
set scrolloff=3
set showmode
set showcmd
set hidden
set modelines=0

filetype plugin indent  on

" vim-session
let g:session_autosave='yes'
let g:session_autoload = 'yes'
let g:session_directory='./'

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

" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
"set t_Co=256
"set t_Co=88
" if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
" 	\ filereadable(expand("$HOME/bundle/guicolorscheme.vim/plugin/guicolorscheme.vim"))
" 	" Use the guicolorscheme plugin to makes 256-color or 88-color
" 	" terminal use GUI colors rather than cterm colors.
" 	runtime! bundle/guicolorscheme.vim/plugin/guicolorscheme.vim
" 	GuiColorScheme solarized
" else
" 	" For 8-color 16-color terminals or for gvim, just use the
" 	" regular :colorscheme command.
" 	colorscheme solarized
" endif

"let g:SrcExpl_pluginList = [
"        \ "__Tag_List__",
"        \ "_NERD_tree_",
" 	\ "__Tagbar__"
"    \ ]

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" Mappings
" map <C-t> :tabnew <Enter> <- conflicts with return from tab stack
let mapleader=","
" Map :Q map to :q and :W to :w
command! Q q
command! W w
map <C-o> :NERDTree<Enter>
map <leader>b :TagbarToggle<Enter>
map <leader>n :tabnew<cr>
map <leader>x :q<cr>
map <leader>o :NERDTree<cr>
map <leader>f :CommandT<cr>

