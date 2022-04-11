"===========================Plugin with vscode============================"

" " === auto-pairs
au FileType cpp let b:AutoPairs = AutoPairsDefine({'\w\zs<': '>'})

"========================Plugin without vscode==========================="

if !exists('g:vscode')



"+vim-comment
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
"-vim-comment




"+coc-go
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
"-coc-go



"+gitgutter
let g:gitgutter_sign_added = '▌'
let g:gitgutter_sign_modified = '▌'
let g:gitgutter_sign_removed = '▁'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_removed_above_and_below = '˃'
let g:gitgutter_sign_modified_removed = '▚'
"-gitgutter



lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "cpp", "c", "bash", "python",
    "json", "go", "regex",
    "comment", "markdown", "lua"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require('telescope').setup{}
EOF



endif
