" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

au TextYankPost * silent! lua vim.highlight.on_yank {higroup="Visual", timeout=500}

autocmd bufenter * if winnr("$") == 1 && vista#sidebar#IsOpen() | execute "normal! :q!\<CR>" | endif

" Sort python import on save
autocmd BufWritePre *.py silent! :call CocAction('runCommand', 'python.sortImports')

" Remember last cursor location
autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
