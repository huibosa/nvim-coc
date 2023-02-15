function! UpdateRemotePlugins(...)
  " Needed to refresh runtime files
  let &rtp=&rtp
  UpdateRemotePlugins
endfunction

call plug#begin()

" Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
Plug 'machakann/vim-sandwich'
Plug 'godlygeek/tabular'

Plug 'sainnhe/everforest'

Plug 'tpope/vim-commentary'

Plug 'huibosa/vim-snippets'
Plug 'liuchengxu/vista.vim'
Plug 'lewis6991/gitsigns.nvim'
" Plug 'tpope/vim-fugitive'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'fannheyward/telescope-coc.nvim'

Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'rcarriga/nvim-notify'

Plug 'karb94/neoscroll.nvim'

call plug#end()
