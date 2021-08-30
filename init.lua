local init_modules = {
    "mappings",
    "plugins",
    "Treesitter",
    "LSP",
    "Options",
    "Telescope",
}


for _, module in ipairs(init_modules) do
	local ok, err = pcall(require, module)
	if not ok then
		error("Error loading " .. module .. "\n\n" .. err)
	end
end

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

    autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' |   exe "normal! g`\"" | endif
]])

