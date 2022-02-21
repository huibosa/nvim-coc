"===========================Plugin with vscode============================"

" " === vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"========================Plugin without vscode==========================="

if !exists('g:vscode')
  
" " === vimtex
let maplocalleader = ","
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=2

" " === auto-pairs
au FileType cpp let b:AutoPairs = AutoPairsDefine({'\w\zs<': '>'})

autocmd FileType m setlocal commentstring=%

" " === vim-go
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []
let g:go_jump_to_error = 0
let g:go_fmt_command = "goimports"
let g:go_auto_sameids = 0
let g:go_def_mapping_enabled = 0
let g:go_code_completion_enabled = 0
let g:go_doc_keywordprg_enabled = 0

" " === markdown-preview.nvim
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'synv_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {},
            \ 'flowchart_diagrams': {},
            \ 'content_editable': v:false,
            \ 'disable_filename': 0
            \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '[${name}]'
let g:mkdp_filetypes = ['markdown']

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

" lua<<EOF
" require('telescope').load_extension('coc')
" EOF

"▕▏
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
