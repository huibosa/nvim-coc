call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-sandwich'
Plug 'godlygeek/tabular'

if !exists('g:vscode')
  
  Plug 'sainnhe/everforest'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'huibosa/vim-snippets'
  " Plug 'fatih/vim-go', {'do': 'GoUpdateBinaries'}
  " Plug 'numToStr/Comment.nvim'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-lua/plenary.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " Plug 'fannheyward/telescope-coc.nvim'
  " Plug 'liuchengxu/vista.vim'

endif

call plug#end()
