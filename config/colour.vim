if !exists('g:vscode')

  "" === For everforest
  colorscheme everforest
  let g:everforest_background = 'hard'
  let g:everforest_transparent_background = 1
  let g:everforest_diagnostic_text_highlight = 1
  let g:everforest_diagnostic_line_highlight = 1
  let g:everforest_sign_column_background = 'none'

  " === Additional color settings
  hi clear signcolumn
  hi Redsign guibg=None
  hi Greensign guibg=None
  hi Bluesign guibg=None
  hi YellowSign guibg=None
  hi AquaSign guibg=None
  hi PurpleSign guibg=None
  
  " hi ErrorFloat guibg=None
  " hi WarningFloat guibg=None
  " hi WarningFloat guibg=None
  " hi InfoFloat guibg=None
  " hi HintFloat guibg=None
  
  hi Normal guibg=None ctermbg=None
  hi Visual guibg=#dbbc7f guifg=#2f383e
  " hi CursorLineNr guibg=None
  hi endofbuffer guibg=None
endif
