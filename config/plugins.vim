call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'

if !exists('g:vscode')
  Plug 'sainnhe/everforest'
  Plug 'glepnir/zephyr-nvim'

  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'airblade/vim-gitgutter'
  Plug 'ap/vim-css-color'
  Plug 'jdhao/better-escape.vim'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'huibosa/vim-snippets'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
endif

call plug#end()


"===========================Plugin with vscode============================"

" " === vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" " === vim-easy-allign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


"========================Plugin without vscode==========================="

if !exists('g:vscode')

" " === better-escape.nvim
let g:better_escape_interval = 100
let g:better_escape_shortcut = ['kj', 'jk']

source $HOME/.config/nvim/config/coc.vim

" " === markdown-preview.nvim
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 1
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

" " === Treesitter

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "cpp", "c", "bash", "python",
    "json", "go", "dockerfile",
    "regex", "comment", "cmake"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF

endif
