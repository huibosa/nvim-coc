lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "cpp",
    "go" ,
    "lua",
    "bash",
    "python",
    "markdown",
    "markdown_inline",
    "json",
    "regex",
    "comment",
    "make"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}
EOF
