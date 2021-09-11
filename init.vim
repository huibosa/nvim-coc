" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
"
" " Owner: @huibosa
"
" " Checkout-list
" " vim-esearch
" " fmoralesc/worldslice
" " SidOfc/mkdx
"
"
" ====================
" === Editor Setup ===
" ====================
" ===
" === System
" ===
set clipboard=unnamedplus
let &t_ut=''
set autochdir

" Remember last cursor location
autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif


" Persistent undo
let s:undodir = "/tmp/.undodir_" . $USER
if !isdirectory(s:undodir)
  call mkdir(s:undodir, "", 0700)
endif
let &undodir=s:undodir
set undofile


" === Editor behavior
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set exrc
set secure
set number
set relativenumber

set hidden
set hlsearch
set incsearch
set inccommand=nosplit
set scrolloff=5
set wrap
set ignorecase
set smartcase
set wildmenu
set ruler

set expandtab
set smarttab
set autoindent 
set smartindent
set shiftround
set shiftwidth=2
set tabstop=2
set foldmethod=syntax
set nofoldenable

set splitright
set splitbelow
set encoding=utf-8
set laststatus=0
set noshowmode

set termguicolors " enable truecolors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" === Terminal behavior
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'


" ===================== Start of Plugin Settings =====================


source $HOME/.config/nvim/plug-config/mappings.vim
source $HOME/.config/nvim/plug-config/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim

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

" " === vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" " === vim-easy-allign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" " ===
" " === Treesitter
" " ===

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF


lua <<EOF
require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF


" ==================== Dress up my vim==========================

" === For everforest
colorscheme everforest
let g:everforest_background = 'hard'
let g:everforest_transparent_background = 1
let g:everforest_diagnostic_text_highlight = 1
let g:everforest_diagnostic_line_highlight = 1
let g:everforest_sign_column_background = 'none'


" === gitgutter
let g:gitgutter_set_sign_backgrounds = 1
hi GitGutterAdd    guifg=#009900 ctermfg=2
hi GitGutterChange guifg=#bbbb00 ctermfg=3
hi GitGutterDelete guifg=#ff2222 ctermfg=1
hi CocHighlightText ctermfg=231 guifg=#ffffff ctermbg=60 guibg=#535e56

" Additional color settings
hi clear signcolumn
hi Visual guibg=#dbbc7f guifg=#2f383e
hi Redsign guibg=None
hi YellowSign guifg= #fcd303 guibg=None
hi Normal guibg=None ctermbg=None
" hi CursorLineNr guibg=None
hi endofbuffer guibg=None
