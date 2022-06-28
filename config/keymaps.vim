let mapleader = ","


nnoremap Y y$
vnoremap Y "+y
nnoremap Q :q<CR>
nnoremap < <<
nnoremap > >>
nnoremap <BS> <C-^>
nnoremap c* *Ncgn

noremap <silent> H g^
noremap <silent> L g$
noremap <silent> j gj
noremap <silent> k gk

noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

inoremap <silent> <C-a> <C-o>:call <SID>home()<CR>
" <C-e> is mapped in coc
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-d> <Del>
inoremap <silent> <C-k> <C-r>=<SID>kill_line()<CR>

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

nnoremap ]b <cmd>bnext<cr>
nnoremap [b <cmd>bprev<cr>

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
