"===========================Plugin with vscode============================"

"+auto-pairs
au FileType cpp let b:AutoPairs = AutoPairsDefine({'\w\zs<': '>'})
"-auto-pairs

"========================Plugin without vscode==========================="

if !exists('g:vscode')

"+vim-commentary
autocmd FileType m setlocal commentstring=%
autocmd FileType c,cpp,java setlocal commentstring=//\ %s

if has('win32')
  nmap <silent> <C-/> :Commentary<CR>
  vmap <silent> <C-/> :Commentary<CR>
else
  nmap <silent> <C-_> :Commentary<CR>
  vmap <silent> <C-_> :Commentary<CR>
endif

function! UnmapCommentary()
  unmap gc
  nunmap gcc
  nunmap gcu
endfunction

autocmd VimEnter * call UnmapCommentary()
"-vim-commentary


"+vista.vim
let g:vista_default_executive = 'coc'
let g:vista#renderer#enable_icon = 0
let g:vista_sidebar_width=40
let g:vista_echo_cursor=0
"-vista.vim


"+coc-go
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
"-coc-go


"+coc-snippets
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'
vmap <tab> <Plug>(coc-snippets-select)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
"-coc-snippets



lua <<EOF
local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<C-u>"] = false,
        ["<esc>"] = actions.close
      },
    },
  }
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "cpp", "c", "bash", "python",
    "json", "go", "regex",
    "comment", "markdown", "lua"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '▌', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '▌', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '▁', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '▔', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '▚', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
        opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- Navigation
    map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
    map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})

    -- Actions
    map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map('v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>')
    map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>')
    map('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>')
    map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
    map('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
    map('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')
    map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>')
    map('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>')
    map('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>')

    -- Text object
    map('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    map('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}
EOF

endif
