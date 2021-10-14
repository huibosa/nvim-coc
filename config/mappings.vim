" ===
" === Basic Mappings
" ===

" Set <LEADER> as <SPACE>, jj as <Esc> 
let mapleader = ","
" make Y to copy till the end of the line
nnoremap Y y$
vnoremap Y "+y
" make Q to play record once
nnoremap Q @q
" Indentation
nnoremap < <<
nnoremap > >>

nnoremap <BS> <C-^>


" === Cursor Movement
" N key: go to the start of the visible line
noremap <silent> H g^
" I key: go to the end of the line
noremap <silent> L g$
" j to go to next visible line
noremap <silent> j gj
" k to go to previous visible line
noremap <silent> k gk


" === Window management
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>


" === Command Mode Cursor Movement
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

nnoremap <leader>ff <cmd>Telescope builtin<cr>
