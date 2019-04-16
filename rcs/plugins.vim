""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
execute pathogen#infect()
execute pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_conf = {
	\	'guifgs': ['#AE81FF', '#27b9b1', '#ffb200', '#7da2fa'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=100
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

map <c-p>f :CtrlPCurFile<cr>
map <c-p>b :CtrlPBuffer<cr>
map <c-p>m :CtrlPMRUFiles<cr>
map <c-p>q :CtrlPQuickfix<cr>
map <c-p>r :CtrlPRTS<cr>
map <c-p>u :CtrlPUndo<cr>

let g:ctrlp_max_height = 100
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""""
" => UltiSnips
""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger = '<C-n>'
let g:UltiSnipsJumpForwardTrigger = '<C-n>'
let g:UltiSnipsJumpBackwardTrigger = '<C-b>'

""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_autoclose_preview_window_after_completion = 1

" Expand snippet from YCM with Enter
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

nnoremap ® :YcmCompleter RefactorRename 
nnoremap © :YcmCompleter GoTo<CR>

""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['tabline', 'branch', 'ale']

let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#alt_sep = 1

let g:airline_highlighting_cache = 1
let g:airline_theme = 'batman'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

""""""""""""""""""""""""""""""
" => Ale
""""""""""""""""""""""""""""""
let g:ale_fixers = {'javascript': ['eslint','prettier'], 'css': ['prettier']}
let g:ale_fix_on_save = 1

""""""""""""""""""""""""""""""
" => Import-js
""""""""""""""""""""""""""""""
nnoremap <leader>l :ImportJSWord<CR>

""""""""""""""""""""""""""""""
" => CamelCaseMotion
""""""""""""""""""""""""""""""
call camelcasemotion#CreateMotionMappings('<leader>c')

""""""""""""""""""""""""""""""
" => Surround
""""""""""""""""""""""""""""""
" Surround with if block using i. For example: "yssi" surrounds current line
" with if
let g:surround_105 = "if (\1condition: \1) {\n\t\r\n}"

""""""""""""""""""""""""""""""
" => Yankstack
""""""""""""""""""""""""""""""
let g:yankstack_map_keys = 0

nmap <leader>pp <Plug>yankstack_substitute_older_paste
nmap <leader>pn <Plug>yankstack_substitute_newer_paste
nmap <leader>yl :Yanks<CR>

""""""""""""""""""""""""""""""
" => Dragvisuals
""""""""""""""""""""""""""""""
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1

""""""""""""""""""""""""""""""
" => Autoswap
""""""""""""""""""""""""""""""
" For autoswap to work
set title titlestring=
