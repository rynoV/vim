let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <Plug>(ale_complete) :ALEComplete
nnoremap <silent>  :call comfortable_motion#flick(-200)
vnoremap  "+y
nnoremap  "+y
nnoremap <silent>  :call comfortable_motion#flick(100)
nnoremap <silent>  :call comfortable_motion#flick(200)
map  h
map <NL> j
map  k
map  l
nnoremap  o
xnoremap <silent>  :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent>  :call UltiSnips#ExpandSnippetOrJump()
nnoremap <silent>  :CtrlP
map u :CtrlPUndo
map r :CtrlPRTS
map q :CtrlPQuickfix
map m :CtrlPMRUFiles
map b :CtrlPBuffer
map f :CtrlPCurFile
snoremap  "_c
nnoremap <silent>  :call comfortable_motion#flick(-100)
vnoremap <silent> # :call VisualSelection('', '')?=@/
vnoremap <silent> * :call VisualSelection('', '')/=@/
xmap <silent> ,cge <Plug>CamelCaseMotion_ge
xmap <silent> ,ce <Plug>CamelCaseMotion_e
xmap <silent> ,cb <Plug>CamelCaseMotion_b
xmap <silent> ,cw <Plug>CamelCaseMotion_w
omap <silent> ,cge <Plug>CamelCaseMotion_ge
omap <silent> ,ce <Plug>CamelCaseMotion_e
omap <silent> ,cb <Plug>CamelCaseMotion_b
omap <silent> ,cw <Plug>CamelCaseMotion_w
nmap <silent> ,cge <Plug>CamelCaseMotion_ge
nmap <silent> ,ce <Plug>CamelCaseMotion_e
nmap <silent> ,cb <Plug>CamelCaseMotion_b
nmap <silent> ,cw <Plug>CamelCaseMotion_w
nnoremap ,l :ImportJSWord
map ,nf :NERDTreeFind
map ,nb :NERDTreeFromBookmark 
map ,nn :NERDTreeToggle
nnoremap ,d :YcmShowDetailedDiagnostic
map ,s? z=
map ,sa zg
map ,sp [s
map ,sn ]s
map ,ss :setlocal spell!
nnoremap ,p9 "9p
nnoremap ,p8 "8p
nnoremap ,p7 "7p
nnoremap ,p6 "6p
nnoremap ,p5 "5p
nnoremap ,p4 "4p
nnoremap ,p3 "3p
nnoremap ,p2 "2p
nnoremap ,p1 "1p
nnoremap ,pd "1p
nnoremap ,py "0p
nnoremap ,pv "+p
nnoremap ,pl :register
map ,cd :cd %:p:h:pwd
map ,te :tabedit =expand("%:p:h")/
map ,j :bprevious
map ,k :bnext
map ,ba :bufdo bd
map ,bd :Bclose:tabclosegT
map <silent> , :noh
nmap ,w :w!
map 0 ^
nnoremap = +
inoremap ˚ :m .-2==gi
nnoremap P <Plug>yankstack_substitute_newer_paste
xmap S <Plug>VSurround
xmap <silent> \cge <Plug>CamelCaseMotion_ge
xmap <silent> \ce <Plug>CamelCaseMotion_e
xmap <silent> \cb <Plug>CamelCaseMotion_b
xmap <silent> \cw <Plug>CamelCaseMotion_w
omap <silent> \cge <Plug>CamelCaseMotion_ge
omap <silent> \ce <Plug>CamelCaseMotion_e
omap <silent> \cb <Plug>CamelCaseMotion_b
omap <silent> \cw <Plug>CamelCaseMotion_w
nmap <silent> \cge <Plug>CamelCaseMotion_ge
nmap <silent> \ce <Plug>CamelCaseMotion_e
nmap <silent> \cb <Plug>CamelCaseMotion_b
nmap <silent> \cw <Plug>CamelCaseMotion_w
nnoremap \l :ImportJSWord
map \nf :NERDTreeFind
map \nb :NERDTreeFromBookmark 
map \nn :NERDTreeToggle
inoremap ∆ :m .+1==gi
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
xmap gS <Plug>VgSurround
xmap <silent> i,cge <Plug>CamelCaseMotion_ige
xmap <silent> i,ce <Plug>CamelCaseMotion_ie
xmap <silent> i,cb <Plug>CamelCaseMotion_ib
xmap <silent> i,cw <Plug>CamelCaseMotion_iw
omap <silent> i,cge <Plug>CamelCaseMotion_ige
omap <silent> i,ce <Plug>CamelCaseMotion_ie
omap <silent> i,cb <Plug>CamelCaseMotion_ib
omap <silent> i,cw <Plug>CamelCaseMotion_iw
xmap <silent> i\cge <Plug>CamelCaseMotion_ige
xmap <silent> i\ce <Plug>CamelCaseMotion_ie
xmap <silent> i\cb <Plug>CamelCaseMotion_ib
xmap <silent> i\cw <Plug>CamelCaseMotion_iw
omap <silent> i\cge <Plug>CamelCaseMotion_ige
omap <silent> i\ce <Plug>CamelCaseMotion_ie
omap <silent> i\cb <Plug>CamelCaseMotion_ib
omap <silent> i\cw <Plug>CamelCaseMotion_iw
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
nnoremap <silent> <Plug>SurroundRepeat .
vnoremap <silent> <Plug>CamelCaseMotion_ige :call camelcasemotion#InnerMotion('ge',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_ige :call camelcasemotion#InnerMotion('ge',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_ge :call camelcasemotion#Motion('ge',v:count1,'v')
vnoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'v')
vnoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'v')
vnoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'v')
onoremap <silent> <Plug>CamelCaseMotion_ge :call camelcasemotion#Motion('ge',v:count1,'o')
onoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'o')
onoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'o')
onoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'o')
nnoremap <silent> <Plug>CamelCaseMotion_ge :call camelcasemotion#Motion('ge',v:count1,'n')
nnoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'n')
nnoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'n')
nnoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'n')
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation
nnoremap <silent> <Plug>(ale_hover) :ALEHover
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinitionInVSplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinitionInSplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinitionInTab
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinitionInVSplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinitionInSplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinitionInTab
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap_warning) :ALENext -wrap -warning
nnoremap <silent> <Plug>(ale_next_warning) :ALENext -warning
nnoremap <silent> <Plug>(ale_next_wrap_error) :ALENext -wrap -error
nnoremap <silent> <Plug>(ale_next_error) :ALENext -error
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap_warning) :ALEPrevious -wrap -warning
nnoremap <silent> <Plug>(ale_previous_warning) :ALEPrevious -warning
nnoremap <silent> <Plug>(ale_previous_wrap_error) :ALEPrevious -wrap -error
nnoremap <silent> <Plug>(ale_previous_error) :ALEPrevious -error
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
nnoremap <Down> 
nnoremap <Up> 
nnoremap <F7> :cprev
nnoremap <F9> :cnext
nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
nnoremap <F8> <Plug>yankstack_substitute_older_paste
xmap <BS> "-d
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap c bywi<ea />
inoremap n  bywi<ea>pbi</ea>lxxF<i<Up>	
inoremap l  bywi<ea>pbi</ea>lxxF<i
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap <expr>  pumvisible() ? "=ExpandSnippetOrCarriageReturn()" : "\"
inoremap <silent>  =UltiSnips#ExpandSnippetOrJump()
imap  <Plug>Isurround
nnoremap © :YcmCompleter GoTo
nnoremap ® :YcmCompleter RefactorRename 
vnoremap ˚ :m '<-2gv=gv
nnoremap ˚ :m .-2==
vnoremap ∆ :m '>+1gv=gv
nnoremap ∆ :m .+1==
nnoremap ‘ >>
nnoremap “ <<
inoremap jj 
cabbr h vert h
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=eol,start,indent
set backupdir=~/.vim/tmp/backup,.
set completefunc=youcompleteme#CompleteFunc
set completeopt=preview,menuone
set directory=~/.vim/tmp/swap//,.
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set formatoptions=tjcnq
set guifont=Fira\ Code:h14,Input\ Mono:h14,Menlo:h15
set guioptions=egm
set helplang=en
set hidden
set history=500
set hlsearch
set ignorecase
set incsearch
set langmenu=en
set laststatus=2
set lazyredraw
set listchars=nbsp:⦸,tab:▷┅,extends:»,precedes:«,trail:���
set matchtime=0
set mouse=a
set ruler
set runtimepath=
set runtimepath+=~/.vim
set runtimepath+=~/.vim/bundle/ale
set runtimepath+=~/.vim/bundle/argtextobj.vim
set runtimepath+=~/.vim/bundle/CamelCaseMotion
set runtimepath+=~/.vim/bundle/comfortable-motion.vim
set runtimepath+=~/.vim/bundle/ctrlp.vim
set runtimepath+=~/.vim/bundle/nerdtree
set runtimepath+=~/.vim/bundle/rainbow
set runtimepath+=~/.vim/bundle/sparkup
set runtimepath+=~/.vim/bundle/surround
set runtimepath+=~/.vim/bundle/ultisnips
set runtimepath+=~/.vim/bundle/vim-airline
set runtimepath+=~/.vim/bundle/vim-commentary
set runtimepath+=~/.vim/bundle/vim-fugitive
set runtimepath+=~/.vim/bundle/vim-gitgutter
set runtimepath+=~/.vim/bundle/vim-import-js
set runtimepath+=~/.vim/bundle/vim-javascript
set runtimepath+=~/.vim/bundle/vim-jsx
set runtimepath+=~/.vim/bundle/vim-react-snippets
set runtimepath+=~/.vim/bundle/vim-snippets
set runtimepath+=~/.vim/bundle/vim-yankstack
set runtimepath+=~/.vim/bundle/YouCompleteMe
set runtimepath+=/usr/local/Cellar/macvim/8.1-155/MacVim.app/Contents/Resources/vim/vimfiles
set runtimepath+=/usr/local/Cellar/macvim/8.1-155/MacVim.app/Contents/Resources/vim/runtime
set runtimepath+=/usr/local/Cellar/macvim/8.1-155/MacVim.app/Contents/Resources/vim/vimfiles/after
set runtimepath+=~/.vim/bundle/vim-jsx/after
set runtimepath+=~/.vim/bundle/vim-javascript/after
set runtimepath+=~/.vim/bundle/ultisnips/after
set runtimepath+=~/.vim/after
set scrolloff=7
set shiftwidth=2
set showmatch
set showtabline=2
set smartcase
set smartindent
set smarttab
set splitbelow
set splitright
set switchbuf=useopen,usetab,newtab
set tabline=%!airline#extensions#tabline#get()
set tabstop=2
set termguicolors
set textwidth=80
set timeoutlen=500
set undodir=~/.vim/tmp/undo,.
set undofile
set whichwrap=b,s,<,>,h,l
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.vim/rcs
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/.vimrc
edit ~/.vimrc
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> ,hp <Plug>GitGutterPreviewHunk
nmap <buffer> ,hu <Plug>GitGutterUndoHunk
nmap <buffer> ,hs <Plug>GitGutterStageHunk
nmap <buffer> [c <Plug>GitGutterPrevHunk
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
nmap <buffer> ]c <Plug>GitGutterNextHunk
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
set foldcolumn=1
setlocal foldcolumn=1
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
setlocal formatoptions=tjcnq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=:help
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
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
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
badd +4 ~/.vimrc
badd +105 ~/.vim/rcs/plugins.vim
badd +1 ~/.vim/rcs/general.vim
badd +1 ~/.vim/rcs/keys.vim
badd +1 ~/.vim/rcs/filetypes.vim
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
