lua <<EOF
local actions = require("telescope.actions")

require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  },
  extensions = {
    coc = {
        theme = 'ivy',
        prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
    }
  },
}

require('telescope').load_extension('coc')
EOF

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fc <cmd>Telescope command<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fm <cmd>Telescope marks<cr>

nnoremap <leader>f<c-o> <cmd>Telescope jumplist<cr>

nnoremap <leader>fS <cmd>Telescope coc workspace_symbols<cr>
nnoremap <leader>fs <cmd>Telescope coc document_symbols<cr>

nnoremap <leader>fD <cmd>Telescope coc workspace_diagnostics<cr>
nnoremap <leader>fd <cmd>Telescope coc diagnostics<cr>

nnoremap <leader>fc <cmd>Telescope commands<cr>

nnoremap gr <cmd>Telescope coc references<cr>
