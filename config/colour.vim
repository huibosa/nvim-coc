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

" === Additional color settings
hi clear signcolumn
hi Visual guibg=#dbbc7f guifg=#2f383e
hi Redsign guibg=None
hi YellowSign guibg=None
hi AquaSign guibg=None
hi Normal guibg=None ctermbg=None
" hi CursorLineNr guibg=None
hi endofbuffer guibg=None
