nnoremap Y y$
vnoremap Y "+y
nnoremap Q @q
nnoremap < <<
nnoremap > >>
nnoremap c* *Ncgn

noremap <silent> H g^
noremap <silent> L g$
noremap <silent> j gj
noremap <silent> k gk

nnoremap <silent> <c-l> :nohlsearch<cr><c-l>

call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'godlygeek/tabular'

call plug#end()

au FileType cpp let b:AutoPairs = AutoPairsDefine({'\w\zs<': '>'})
