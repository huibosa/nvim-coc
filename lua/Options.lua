vim.o.swapfile = true
vim.o.dir = '/tmp'
vim.o.laststatus = 0

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

vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

vim.o.updatetime = 300

-- Remember last cursor
vim.api.nvim_command([[
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif
	command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
]])

local cmd = vim.cmd

cmd 'colorscheme zephyr'
