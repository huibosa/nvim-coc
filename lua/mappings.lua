local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-----------------------Basic Mappings------------------------

vim.g.mapleader = ','

map('i', 'jj', '<Esc>')
map('n', 'Y', 'y$')
map('v', 'Y', '"+y')
map('n', 'Q', '@q')
map('n', '<', '<<')
map('n', '>', '>>')
map('n', 'H', '^')
map('n', 'L', '$')

map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")
