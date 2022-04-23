"+Remember last cursor location
autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
"-Remember last cursor location


"+Persistent undo
let s:undodir = "/tmp/.undodir_" . $USER
if !isdirectory(s:undodir)
  call mkdir(s:undodir, "", 0700)
endif
let &undodir=s:undodir
set undofile
"-Persistent undo

"+System
set clipboard+=unnamedplus
let &t_ut=''
set autochdir
"-System


"+Editor behavior
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

set cmdheight=1
set nobackup
set nowritebackup
set updatetime=180
set shortmess+=c
set nospell

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

"-Editor behavior

"+check if in a git repo
silent! !git rev-parse --is-inside-work-tree
if v:shell_error == 0
  set signcolumn=yes
else
  set signcolumn=no
endif
"-check if in a git repo

set termguicolors " enable truecolors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

source $HOME/.config/nvim/config/keymaps.vim
source $HOME/.config/nvim/config/plugins/vim_plug.vim
source $HOME/.config/nvim/config/plugins/plugins.vim
source $HOME/.config/nvim/config/plugins/coc.vim
source $HOME/.config/nvim/config/colour.vim
