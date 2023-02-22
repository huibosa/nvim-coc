let g:fzf_preview_preview_key_bindings = 'ctrl-d:preview-page-down,ctrl-u:preview-page-up,ctrl-/:toggle-preview'
let g:fzf_preview_fzf_preview_window_option = 'up:50%'
let g:fzf_preview_filelist_command = 'rg --files --smart-case --hidden --follow --no-messages -g \!"* *" --glob=!.git/'
let g:fzf_preview_directory_files_command = 'rg --files --smart-case --hidden --follow --no-messages -g \!"* *" --glob=!.git/'
let g:fzf_preview_grep_cmd = 'rg --line-number --smart-case --no-heading --color=never --hidden --glob=!.git/'
let g:fzf_binary_preview_command = 'echo "{} is a binary file"'


" let $BAT_THEME = 'gruvbox-dark'
let $FZF_PREVIEW_PREVIEW_BAT_THEME = 'base16'

nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]

nnoremap <silent> <Leader><Leader> :<C-u>CocCommand<CR>
nnoremap <silent> gD :<C-u>CocCommand fzf-preview.CocReferences<CR>

nnoremap <silent> [fzf-p]L     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query=""<CR>
nnoremap <silent> [fzf-p]l     :<C-u>CocCommand fzf-preview.BufferLines --add-fzf-arg=--no-sort --add-fzf-arg=--query="<C-r>=expand('<cword>')<CR>"<CR>

nnoremap <silent> [fzf-p]<C-o> :<C-u>CocCommand fzf-preview.Jumps<CR>

nnoremap <silent> [fzf-p]f     :<C-u>CocCommand fzf-preview.ProjectFiles<CR>

nnoremap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>

nnoremap <silent> [fzf-p]o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>

nnoremap <silent> [fzf-p]d     :<C-u>CocCommand fzf-preview.CocDiagnostics<CR>

nnoremap          [fzf-p]g     :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          [fzf-p]g     "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap          [fzf-p]G     :<C-u>CocCommand fzf-preview.ProjectGrepRecall<CR>

nnoremap <silent> [fzf-p]T     :<C-u>CocCommand fzf-preview.VistaBufferCtags<CR>
nnoremap <silent> [fzf-p]t     :<C-u>CocCommand fzf-preview.VistaCtags<CR>
