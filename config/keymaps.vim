nnoremap <SPACE> <Nop>
let mapleader = " "


nnoremap Y y$
vnoremap Y "+y
nnoremap Q :q!<CR>
nnoremap < <<
nnoremap > >>
nnoremap <BS> <C-^>
nnoremap c* *Ncgn

noremap <silent> H g^
noremap <silent> L g$
noremap <silent> j gj
noremap <silent> k gk

noremap <up> :res +5<cr>
noremap <down> :res -5<cr>
noremap <left> :vertical resize-5<cr>
noremap <right> :vertical resize+5<cr>

inoremap <silent> <c-a> <c-o>:call <SID>home()<cr>
" <C-e> is mapped in coc
inoremap <c-b> <left>
inoremap <c-f> <right>
inoremap <c-d> <del>
inoremap <silent> <c-k> <c-r>=<SID>kill_line()<cr>

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-b> <left>
cnoremap <c-f> <right>
cnoremap <c-d> <del>

nnoremap ]b <cmd>bnext<cr>
nnoremap [b <cmd>bprev<cr>

nnoremap <c-q> %

function! s:home()
  let start_col = col('.')
  normal! ^
  if col('.') == start_col
    normal! 0
  endif
  return ''
endfunction

function! s:kill_line()
  let [text_before_cursor, text_after_cursor] = s:split_line_text_at_cursor()
  if len(text_after_cursor) == 0
    normal! J
  else
    call setline(line('.'), text_before_cursor)
  endif
  return ''
endfunction

function! s:split_line_text_at_cursor()
  let line_text = getline(line('.'))
  let text_after_cursor  = line_text[col('.')-1 :]
  let text_before_cursor = (col('.') > 1) ? line_text[: col('.')-2] : ''
  return [text_before_cursor, text_after_cursor]
endfunction
