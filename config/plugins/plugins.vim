"===========================Plugin with vscode============================"

" " === auto-pairs
au FileType cpp let b:AutoPairs = AutoPairsDefine({'\w\zs<': '>'})

""" === vim-comment
autocmd FileType m setlocal commentstring=%

"========================Plugin without vscode==========================="

if !exists('g:vscode')

" === coc-go
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

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

require('gitsigns').setup{
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '▌', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '▌', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '▂', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '▔', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '▚', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
}

require('telescope').setup{}
EOF

endif
