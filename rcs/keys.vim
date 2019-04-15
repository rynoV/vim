" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Output the current syntax group
nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap = +

" Cycle through quickfix list
nnoremap <F9> :cnext<CR>
nnoremap <F7> :cprev<CR>

" Scroll with up and down arrows
nnoremap <up> <C-y>
nnoremap <down> <C-e>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>k :bnext<cr>
map <leader>j :bprevious<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent a line with ALT+][
nnoremap “ <<
nnoremap ‘ >>

inoremap jj <Esc>
nnoremap <CR> o<Esc>

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] on mac
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Auto complete HTML tags by typing name of tag and pressing shortcut while on
" word
" Single line
inoremap <C-h>l <Space><Esc>bywi<<Esc>ea><Esc>pbi</<Esc>ea><Esc>lxxF<i
" Three lines with indent
inoremap <C-h>n <Space><Esc>bywi<<Esc>ea><Esc>pbi</<Esc>ea><Esc>lxxF<i<CR><CR><Up><Tab>
" No closing tag
inoremap <C-h>c <Esc>bywi<<Esc>ea />

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Copy paste
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>pp <Plug>yankstack_substitute_older_paste
nmap <leader>pn <Plug>yankstack_substitute_newer_paste
nmap <leader>yl :Yanks<CR>

nnoremap <leader>pl :register<CR>
nnoremap <leader>pv "+p
nnoremap <leader>py "0p
nnoremap <leader>pd "1p
nnoremap <leader>p1 "1p
nnoremap <leader>p2 "2p
nnoremap <leader>p3 "3p
nnoremap <leader>p4 "4p
nnoremap <leader>p5 "5p
nnoremap <leader>p6 "6p
nnoremap <leader>p7 "7p
nnoremap <leader>p8 "8p
nnoremap <leader>p9 "9p

nnoremap <C-c> "+y
vnoremap <C-c> "+y


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
