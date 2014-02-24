let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <Nul> 
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <Plug>(EmmetAnchorizeSummary) =emmet#util#closePopup()=emmet#anchorizeURL(1)<Right>
inoremap <Plug>(EmmetAnchorizeURL) =emmet#util#closePopup()=emmet#anchorizeURL(0)<Right>
inoremap <Plug>(EmmetRemoveTag) =emmet#util#closePopup()=emmet#removeTag()<Right>
inoremap <Plug>(EmmetSplitJoinTag) :call emmet#splitJoinTag()
inoremap <Plug>(EmmetToggleComment) =emmet#util#closePopup()=emmet#toggleComment()<Right>
inoremap <Plug>(EmmetImageSize) =emmet#util#closePopup()=emmet#imageSize()<Right>
inoremap <Plug>(EmmetMovePrev) :call emmet#moveNextPrev(1)
inoremap <Plug>(EmmetMoveNext) :call emmet#moveNextPrev(0)
inoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-1)
inoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(1)
inoremap <Plug>(EmmetExpandWord) =emmet#util#closePopup()=emmet#expandAbbr(1,"")<Right>
inoremap <Plug>(EmmetExpandAbbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")<Right>
inoremap <silent> <Plug>delimitMateS-Tab =delimitMate#JumpAny()
inoremap <silent> <Plug>delimitMateSpace =delimitMate#ExpandSpace()
inoremap <silent> <Plug>delimitMateCR =delimitMate#ExpandReturn()
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
inoremap <silent> <Plug>delimitMate` =delimitMate#QuoteDelim("\`")
inoremap <silent> <Plug>delimitMate' =delimitMate#QuoteDelim("\'")
inoremap <silent> <Plug>delimitMate" =delimitMate#QuoteDelim("\"")
inoremap <silent> <Plug>delimitMate] =delimitMate#JumpOut("\]")
inoremap <silent> <Plug>delimitMate} =delimitMate#JumpOut("\}")
inoremap <silent> <Plug>delimitMate) =delimitMate#JumpOut("\)")
inoremap <silent> <Plug>delimitMate[ =delimitMate#ParenDelim("]")
inoremap <silent> <Plug>delimitMate{ =delimitMate#ParenDelim("}")
inoremap <silent> <Plug>delimitMate( =delimitMate#ParenDelim(")")
map  :NERDTree
vmap c <Plug>(EmmetCodePretty)
vmap m <Plug>(EmmetMergeLines)
nmap A <Plug>(EmmetAnchorizeSummary)
nmap a <Plug>(EmmetAnchorizeURL)
nmap k <Plug>(EmmetRemoveTag)
nmap j <Plug>(EmmetSplitJoinTag)
nmap / <Plug>(EmmetToggleComment)
nmap i <Plug>(EmmetImageSize)
nmap N <Plug>(EmmetMovePrev)
nmap n <Plug>(EmmetMoveNext)
vmap D <Plug>(EmmetBalanceTagOutward)
nmap D <Plug>(EmmetBalanceTagOutward)
vmap d <Plug>(EmmetBalanceTagInward)
nmap d <Plug>(EmmetBalanceTagInward)
nmap ; <Plug>(EmmetExpandWord)
vmap , <Plug>(EmmetExpandAbbr)
nmap , <Plug>(EmmetExpandAbbr)
nmap d :cs find d =expand("<cword>")	
nmap i :cs find i =expand("<cfile>")	
nmap f :cs find f =expand("<cfile>")	
nmap e :cs find e =expand("<cword>")	
nmap t :cs find t =expand("<cword>")	
nmap c :cs find c =expand("<cword>")	
nmap g :cs find g =expand("<cword>")	
nmap s :cs find s =expand("<cword>")	
nnoremap <silent> 9 :TComment count=9
nnoremap <silent> 8 :TComment count=8
nnoremap <silent> 7 :TComment count=7
nnoremap <silent> 6 :TComment count=6
nnoremap <silent> 5 :TComment count=5
nnoremap <silent> 4 :TComment count=4
nnoremap <silent> 3 :TComment count=3
nnoremap <silent> 2 :TComment count=2
nnoremap <silent> 1 :TComment count=1
nnoremap <silent>  :TComment
vnoremap <silent> 9 :TCommentMaybeInline count=9
onoremap <silent> 9 :TComment count=9
vnoremap <silent> 8 :TCommentMaybeInline count=8
onoremap <silent> 8 :TComment count=8
vnoremap <silent> 7 :TCommentMaybeInline count=7
onoremap <silent> 7 :TComment count=7
vnoremap <silent> 6 :TCommentMaybeInline count=6
onoremap <silent> 6 :TComment count=6
vnoremap <silent> 5 :TCommentMaybeInline count=5
onoremap <silent> 5 :TComment count=5
vnoremap <silent> 4 :TCommentMaybeInline count=4
onoremap <silent> 4 :TComment count=4
vnoremap <silent> 3 :TCommentMaybeInline count=3
onoremap <silent> 3 :TComment count=3
vnoremap <silent> 2 :TCommentMaybeInline count=2
onoremap <silent> 2 :TComment count=2
vnoremap <silent> 1 :TCommentMaybeInline count=1
onoremap <silent> 1 :TComment count=1
noremap ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#Complete"))
noremap <silent> cc :call tcomment#SetOption("count", v:count1)
noremap s :TCommentAs =&ft_
noremap n :TCommentAs =&ft 
noremap a :TCommentAs 
noremap b :TCommentBlock
noremap <silent> i v:TCommentInline mode=I#
noremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment``
vnoremap <silent>  :TCommentMaybeInline
onoremap <silent>  :TComment
nnoremap <silent> ,__ :TComment
snoremap <silent> ,__ :TComment
nnoremap ,d :YcmShowDetailedDiagnostic
noremap ,_s :TCommentAs =&ft_
noremap ,_n :TCommentAs =&ft 
noremap ,_a :TCommentAs 
noremap ,_b :TCommentBlock
noremap <silent> ,_r :TCommentRight
xnoremap <silent> ,_i :TCommentInline
noremap ,_  :TComment 
noremap <silent> ,_p vip:TComment
xnoremap <silent> ,__ :TCommentMaybeInline
onoremap <silent> ,__ :TComment
nnoremap ,g :silent execute "grep! -RsnwI --include=*.[ch] " . shellescape(expand("<cWORD>")) . " .":copen
map ,f :CommandT
map ,o :NERDTree
map ,x :q
map ,t :tabnew
map ,b :TagbarToggle
nmap gx <Plug>NetrwBrowseX
xnoremap <silent> gC :TCommentMaybeInline!
nnoremap <silent> gCb :let w:tcommentPos = getpos(".") | call tcomment#SetOption("mode_extra", "B") | set opfunc=tcomment#OperatorLineg@
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
xnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcb :let w:tcommentPos = getpos(".") | call tcomment#SetOption("mode_extra", "B") | set opfunc=tcomment#OperatorLineg@
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc9c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 9) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc8c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 8) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc7c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 7) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc6c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 6) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc5c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 5) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc4c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 4) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc3c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 3) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc2c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 2) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc1c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 1) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
omap ic :normal vic
vnoremap ic :silent call tcomment#TextObjectInlineComment()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nmap <Nul><Nul>d :vert scs find d =expand("<cword>")	
nmap <Nul><Nul>i :vert scs find i =expand("<cfile>")	
nmap <Nul><Nul>f :vert scs find f =expand("<cfile>")	
nmap <Nul><Nul>e :vert scs find e =expand("<cword>")	
nmap <Nul><Nul>t :vert scs find t =expand("<cword>")	
nmap <Nul><Nul>c :vert scs find c =expand("<cword>")	
nmap <Nul><Nul>g :vert scs find g =expand("<cword>")	
nmap <Nul><Nul>s :vert scs find s =expand("<cword>")	
nmap <Nul>d :scs find d =expand("<cword>")	
nmap <Nul>i :scs find i =expand("<cfile>")	
nmap <Nul>f :scs find f =expand("<cfile>")	
nmap <Nul>e :scs find e =expand("<cword>")	
nmap <Nul>t :scs find t =expand("<cword>")	
nmap <Nul>c :scs find c =expand("<cword>")	
nmap <Nul>g :scs find g =expand("<cword>")	
nmap <Nul>s :scs find s =expand("<cword>")	
vnoremap <Plug>(EmmetCodePretty) :call emmet#codePretty()
vnoremap <Plug>(EmmetMergeLines) :call emmet#mergeLines()
nnoremap <Plug>(EmmetAnchorizeSummary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(EmmetAnchorizeURL) :call emmet#anchorizeURL(0)
nnoremap <Plug>(EmmetRemoveTag) :call emmet#removeTag()
nnoremap <Plug>(EmmetSplitJoinTag) :call emmet#splitJoinTag()
nnoremap <Plug>(EmmetToggleComment) :call emmet#toggleComment()
nnoremap <Plug>(EmmetImageSize) :call emmet#imageSize()
nnoremap <Plug>(EmmetMovePrev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(EmmetMoveNext) :call emmet#moveNextPrev(0)
vnoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-2)
nnoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-1)
vnoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(2)
nnoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(1)
nnoremap <Plug>(EmmetExpandWord) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(EmmetExpandAbbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(EmmetExpandAbbr) :call emmet#expandAbbr(3,"")
vmap <BS> "-d
inoremap <expr> 	 pumvisible() ? "\" : "\	"
imap A <Plug>(EmmetAnchorizeSummary)
imap a <Plug>(EmmetAnchorizeURL)
imap k <Plug>(EmmetRemoveTag)
imap j <Plug>(EmmetSplitJoinTag)
imap / <Plug>(EmmetToggleComment)
imap i <Plug>(EmmetImageSize)
imap N <Plug>(EmmetMovePrev)
imap n <Plug>(EmmetMoveNext)
imap D <Plug>(EmmetBalanceTagOutward)
imap d <Plug>(EmmetBalanceTagInward)
imap ; <Plug>(EmmetExpandWord)
imap , <Plug>(EmmetExpandAbbr)
inoremap <silent> 9 :TComment count=9
inoremap <silent> 8 :TComment count=8
inoremap <silent> 7 :TComment count=7
inoremap <silent> 6 :TComment count=6
inoremap <silent> 5 :TComment count=5
inoremap <silent> 4 :TComment count=4
inoremap <silent> 3 :TComment count=3
inoremap <silent> 2 :TComment count=2
inoremap <silent> 1 :TComment count=1
inoremap s :TCommentAs =&ft_
inoremap n :TCommentAs =&ft 
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> i v:TCommentInline mode=#
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip:TComment``
inoremap <silent>  :TComment
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set completefunc=youcompleteme#Complete
set completeopt=preview,menuone
set cpoptions=aAceFsB
set cscopetag
set cscopeverbose
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set history=500
set hlsearch
set incsearch
set langmenu=none
set laststatus=2
set modelines=0
set mouse=a
set omnifunc=youcompleteme#OmniComplete
set ruler
set runtimepath=~/.vim/bundle/vundle,~/.vim/bundle/vim-fugitive,~/.vim/bundle/tagbar,~/.vim/bundle/delimitMate,~/.vim/bundle/tcomment_vim,~/.vim/bundle/nerdtree,~/.vim/bundle/YouCompleteMe,~/.vim/bundle/vim-plugin-autosess,~/.vim/bundle/vim-node,~/.vim/bundle/vim-javascript-syntax,~/.vim/bundle/emmet-vim,~/.vim/bundle/cscope_macros.vim,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-vividchalk,~/.vim/bundle/molokai,~/.vim/bundle/jellybeans.vim,~/.vim/bundle/base16-vim,~/.vim/bundle/vibrantink,~/.vim/bundle/muzzl.vim,~/.vim/bundle/phd,~/.vim/bundle/twilight,~/.vim/bundle/xterm16.vim,~/.vim/bundle/vim-squirrel,~/.vim/bundle/vim-arduino-syntax,~/.vim,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/vundle/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/tagbar/after,~/.vim/bundle/delimitMate/after,~/.vim/bundle/tcomment_vim/after,~/.vim/bundle/nerdtree/after,~/.vim/b
set scrolloff=3
set scrollopt=ver,jump,hor
set showcmd
set showmatch
set showtabline=2
set updatetime=2000
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/qacm
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 Apps/appliance/quirky-imp-interface/quirky-application-firmware-handlers.c
badd +1 Apps/appliance/quirky-imp-interface/quirky-blob-storage.c
badd +1 Apps/appliance/dct-interface/dct-wifi.c
badd +344 Apps/bootloader/bootloader.c
badd +359 Wiced/Platform/BCM9WCDUSI09/bootloader_ota/platform_bootloader.c
badd +1 Apps/bootloader/bootloader.mk
silent! argdel *
edit Apps/appliance/quirky-imp-interface/quirky-application-firmware-handlers.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =delimitMate#JumpMany()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=youcompleteme#OmniComplete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=3
setlocal tags=~/git/qacm/.git/c.tags,~/git/qacm/.git/tags,./tags,tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 61 - ((41 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
61
normal! 0
tabedit Apps/appliance/quirky-imp-interface/quirky-blob-storage.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =delimitMate#JumpMany()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=youcompleteme#OmniComplete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=3
setlocal tags=~/git/qacm/.git/c.tags,~/git/qacm/.git/tags,./tags,tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 213 - ((3 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
213
normal! 0
tabedit Apps/bootloader/bootloader.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 172 + 102) / 204)
argglobal
enew
file NERD_tree_1
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =delimitMate#JumpMany()
nnoremap <buffer> <silent> <NL> :call nerdtree#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent>  :call nerdtree#invokeKeyMap('o')
nnoremap <buffer> <silent> ? :call nerdtree#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#invokeKeyMap("B")
nnoremap <buffer> <silent> CD :call nerdtree#invokeKeyMap("CD")
nnoremap <buffer> <silent> C :call nerdtree#invokeKeyMap("C")
nnoremap <buffer> <silent> D :call nerdtree#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#invokeKeyMap("X")
nnoremap <buffer> <silent> cd :call nerdtree#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#invokeKeyMap("f")
nnoremap <buffer> <silent> gi :call nerdtree#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#invokeKeyMap("gs")
nnoremap <buffer> <silent> go :call nerdtree#invokeKeyMap("go")
nnoremap <buffer> <silent> i :call nerdtree#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#invokeKeyMap("s")
nnoremap <buffer> <silent> t :call nerdtree#invokeKeyMap("t")
nnoremap <buffer> <silent> u :call nerdtree#invokeKeyMap("u")
nnoremap <buffer> <silent> x :call nerdtree#invokeKeyMap("x")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#invokeKeyMap("<LeftRelease>")
nnoremap <buffer> <silent> <MiddleRelease> :call nerdtree#invokeKeyMap("<MiddleRelease>")
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=8
setlocal tags=~/git/qacm/.git/tags,./tags,tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
inoremap <buffer> <Plug>delimitMateJumpMany =delimitMate#JumpMany()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=youcompleteme#OmniComplete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=3
setlocal tags=~/git/qacm/.git/c.tags,~/git/qacm/.git/tags,./tags,tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 326 - ((9 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
326
normal! 023l
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 172 + 102) / 204)
tabnext 3
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
