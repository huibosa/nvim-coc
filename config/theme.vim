colorscheme everforest

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"+Everforest
let g:everforest_background = 'hard'
let g:everforest_transparent_background = 1
let g:everforest_diagnostic_text_highlight = 1
let g:everforest_diagnostic_line_highlight = 1
let g:everforest_sign_column_background = 'none'
"-Everforest

"+Additional color settings
hi clear signcolumn

hi Redsign guibg=None
hi Greensign guibg=None
hi Bluesign guibg=None
hi YellowSign guibg=None
hi AquaSign guibg=None
hi PurpleSign guibg=None

hi Normal guibg=None ctermbg=None
hi Visual guibg=#3b5360

hi endofbuffer guibg=None

" Color for seleted background
hi CocMenuSel guibg=#5b6469

" Color for matched item
hi CocPumSearch cterm=bold ctermfg=142 gui=bold guifg=#7fbbb3
""-Additional color settings
