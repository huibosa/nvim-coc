call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'godlygeek/tabular'

if !exists('g:vscode')
  
  Plug 'sainnhe/everforest'

  Plug 'tpope/vim-commentary'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'huibosa/vim-snippets'
  Plug 'liuchengxu/vista.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
endif

call plug#end()
