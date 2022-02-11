call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'

if !exists('g:vscode')
  
  Plug 'sainnhe/everforest'

  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  " Plug 'jdhao/better-escape.vim'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'huibosa/vim-snippets'
  Plug 'lervag/vimtex'
  Plug 'fatih/vim-go', {'do': 'GoUpdateBinaries'}
  " Plug 'numToStr/Comment.nvim'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-lua/plenary.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  " Plug 'nvim-telescope/telescope.nvim'
  " Plug 'fannheyward/telescope-coc.nvim'
  Plug 'liuchengxu/vista.vim'

endif

call plug#end()
