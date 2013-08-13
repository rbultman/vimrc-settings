call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set mouse=a

syntax enable

" Tab-related settings
set showtabline=2

filetype plugin on

set background=dark
" let g:solarized_termtrans=1
let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
colorscheme solarized

" Mappings 
" map <C-t> :tabnew <Enter>
map <C-o> :NERDTree<Enter>
map \s :TagbarToggle<Enter>

