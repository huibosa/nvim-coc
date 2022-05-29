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
EOF
