autocmd FileType m setlocal commentstring=%
autocmd FileType c,cpp,java setlocal commentstring=//\ %s

if has('win32')
  nmap <silent> <C-/> :Commentary<CR>
  vmap <silent> <C-/> :Commentary<CR>
else
  nmap <silent> <C-_> :Commentary<CR>
  vmap <silent> <C-_> :Commentary<CR>
endif

function! UnmapCommentary()
  unmap gc
  nunmap gcc
  nunmap gcu
endfunction

autocmd VimEnter * call UnmapCommentary()
