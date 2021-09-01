vim.o.swapfile = true
vim.o.dir = '/tmp'
vim.o.laststatus = 0
vim.o.clipboard = 'unnamedplus'

vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.inccommand = 'nosplit'

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.scrolloff = 5
vim.o.number = true
vim.o.relativenumber = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.wrap = true

vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

vim.o.updatetime = 300

vim.o.termguicolors = true

vim.cmd([[
    autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()
    autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()

    " References to the same variable
    highlight LspReference guifg=NONE guibg=#665c54 guisp=NONE gui=NONE cterm=NONE ctermfg=NONE ctermbg=59
    highlight! link LspReferenceText LspReference
    highlight! link LspReferenceRead LspReference
    highlight! link LspReferenceWrite LspReference
    autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()
    autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

    " Remember last cursor position
    autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' |   exe "normal! g`\"" | endif

    colorscheme everforest
]])


