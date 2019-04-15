""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
execute pathogen#infect()
execute pathogen#helptags()

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

