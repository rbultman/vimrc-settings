" vimrc 
" Copyright Rob Bultman 
" 

" Junk for vundle - not sure how much of this is needed
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" stuff being managed by vundle
" Bundle management with Vundle
Bundle 'gmarik/vundle'
" misc stuff used by other plugins from xolox
Bundle 'xolox/vim-misc.git'
" git plugin
Bundle 'tpope/vim-fugitive'
" put a list of the current tags in a sidebar
Bundle 'majutsushi/tagbar'
" automatic closing of quotes, parenthesis, brackets, etc.
Bundle 'Raimondi/delimitMate'
" plugin to make handle comments easier
Bundle 'tomtom/tcomment_vim.git'
" presents a tree for opening files
Bundle 'scrooloose/nerdtree.git'
" syntax auto completion 
Bundle 'Valloric/YouCompleteMe'
" buffer management
" Bundle 'jlanzarotta/bufexplorer'
" automatic session management
Bundle 'xolox/vim-session.git'
" Another session saver
" Bundle 'powerman/vim-plugin-autosess'
" make node programming easier.
Bundle 'moll/vim-node'
" Javscript related
" Enhanced JavaScript Syntax for Vim
Bundle 'jelera/vim-javascript-syntax.git'
" a vim plug-in which provides support for expanding abbreviations similar to emmet
Bundle 'mattn/emmet-vim.git'
" Code-related plugins
" Automated tag file generation and syntax highlighting of tags
" Bundle 'xolox/vim-easytags.git'
" cscope macros
Bundle 'cscope_macros.vim'
" see definitions like source insight
" Bundle 'wesleyche/SrcExpl.git'
" The 'Tag List' plugin is a source code browser plugin for Vim and
" provides an overview of the structure of source code files and allows
" you to efficiently browse through source code files for different
" programming languages.
" Bundle 'taglist.vim'
" Colors
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-vividchalk.git'
Bundle 'tomasr/molokai.git'
Bundle 'nanotech/jellybeans.vim.git'
Bundle 'chriskempson/base16-vim.git'
Bundle 'vim-scripts/vibrantink'
Bundle 'vim-scripts/muzzl.vim'
Bundle 'phd'
Bundle 'twilight'
Bundle 'xterm16.vim'
" Syntax Files
Bundle 'xevz/vim-squirrel'
Bundle 'sirtaj/vim-openscad'
Bundle 'sudar/vim-arduino-syntax'

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
"
" Mappings 
" map <C-t> :tabnew <Enter> <- conflicts with return from tab stack
let mapleader=","
" Map :Q map to :q and :W to :w
command! Q q
command! W w
map <C-o> :NERDTree<Enter>
map <leader>b :TagbarToggle<Enter>
map <leader>t :tabnew<cr>
map <leader>x :q<cr>
map <leader>o :NERDTree<cr>
map <leader>f :CommandT<cr>
" map grep for a C search for the WORD under the cursor
nnoremap <leader>g :silent execute "grep! -RsnwI --include=*.[ch] " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>


