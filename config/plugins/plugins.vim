"===========================Plugin with vscode============================"

" " === vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"========================Plugin without vscode==========================="

if !exists('g:vscode')
  
" " === vimtex
" let maplocalleader =","
" let g:tex_flavor='latex'
" let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=2

" " === auto-pairs
au FileType cpp let b:AutoPairs = AutoPairsDefine({'\w\zs<': '>'})

autocmd FileType m setlocal commentstring=%

" === coc-go
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" " === vim-go
" let g:go_diagnostics_enabled = 0
" let g:go_metalinter_enabled = []
" let g:go_jump_to_error = 0
" let g:go_fmt_command ="goimports"
" let g:go_auto_sameids = 0
" let g:go_def_mapping_enabled = 0
" let g:go_code_completion_enabled = 0
" let g:go_doc_keywordprg_enabled = 0

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
EOF

lua << EOF
require('gitsigns').setup{
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '▐', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '▐', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '▂', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '▔', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '▚', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
}
EOF

endif
