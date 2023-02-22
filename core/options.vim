" Check if in a git repo
 silent! !git rev-parse --is-inside-work-tree
 if v:shell_error == 0
   set signcolumn=yes
 else
   set signcolumn=no
 endif

 " change fillchars for folding, vertical split, end of buffer, and message separator
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾

" Ignore certain files and folders when globing
set wildignore+=*.o,*.obj,*.dylib,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico
set wildignore+=*.pyc,*.pkl
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv
set wildignorecase  " ignore file and dir name cases in cmd-completion

set noswapfile

" Set up backup directory
let g:backupdir=expand(stdpath('data') . '/backup//')
let &backupdir=g:backupdir

" Skip backup for patterns in option wildignore
let &backupskip=&wildignore
set backup  " create backup for files
set backupcopy=yes  " copy the original file to backupdir and overwrite it

"+Editor behavior
filetype plugin indent on

set number

set hidden

set hlsearch
set incsearch

set inccommand=nosplit

" Minimum lines to keep above and below cursor when scrolling
set scrolloff=5

" Ignore case in general, but become case-sensitive when uppercase is present
set ignorecase smartcase

set wildmenu

" General tab settings
" set smarttab
" set autoindent
" set smartindent
" set shiftround
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of visual spaces for TAB
set tabstop=2       " number of visual sapces per TAB
set expandtab       " expand tab to spaces so that tabs are spaces

set foldmethod=syntax
set nofoldenable

set splitright splitbelow
set encoding=utf-8
set laststatus=0
set noshowmode

set updatetime=500
set nospell

set cmdheight=0

" Set matching pairs of characters and highlight matching brackets
set matchpairs+=<:>,「:」,『:』,【:】,“:”,‘:’,《:》

set mouse=

" Break line at predefined characters
set linebreak
" Character to show before the lines that have been soft-wrapped
set showbreak=↪

" set wildmode=list:longest
" set wildmode=list:

" Disable showing current mode on command line since statusline plugins can show it.
set noshowmode

set fileformats=unix,dos  " Fileformats to use for new files

" Ask for confirmation when handling unsaved or read-only files
set confirm

set visualbell noerrorbells  " Do not use visual and errorbells
set history=500  " The number of command and search history to keep

" Use list mode and customized listchars
" set list listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣

" Auto-write the file based on some condition
set autowrite

" Persistent undo even after you close a file and re-open it
set undofile

" Do not show "match xx of xx" and other messages during auto-completion
set shortmess+=c

" Do not show search match count on bottom right (seriously, I would strain my
" neck looking at it). Using plugins like vim-anzu or nvim-hlslens is a better
" choice, IMHO.
set shortmess+=S

" Disable showing intro message (:intro)
set shortmess+=I

" Align indent to next multiple value of shiftwidth. For its meaning,
" see http://vim.1045645.n5.nabble.com/shiftround-option-td5712100.html
set shiftround

set virtualedit=block  " Virtual edit is useful for visual block edit

" Correctly break multi-byte characters such as CJK,
" see https://stackoverflow.com/q/32669814/6064933
set formatoptions+=mM

" Tilde (~) is an operator, thus must be followed by motions like `e` or `w`.
set tildeop

set synmaxcol=250  " Text after this column number is not highlighted
set nostartofline

" External program to use for grep command
if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
  set grepformat=%f:%l:%c:%m
endif

" Enable true color support. Do not set this option if your terminal does not
" support true colors! For a comprehensive list of terminals supporting true
" colors, see https://github.com/termstandard/colors and https://gist.github.com/XVilka/8346728.
set termguicolors

" Set up cursor color and shape in various mode, ref:
" https://github.com/neovim/neovim/wiki/FAQ#how-to-change-cursor-color-in-the-terminal
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor20

" Remove certain character from file name pattern matching
set isfname-==
set isfname-=,

" diff options
set diffopt=
set diffopt+=vertical  " show diff in vertical position
set diffopt+=filler  " show filler for deleted lines
set diffopt+=closeoff  " turn off diff when one file window is closed
set diffopt+=context:3  " context for diff
set diffopt+=internal,indent-heuristic,algorithm:histogram

set nowrap  " do no wrap
set noruler
