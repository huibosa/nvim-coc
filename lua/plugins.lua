vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-commentary'
    -- use 'sainnhe/everforest'
    use 'jiangmiao/auto-pairs'
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
    use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
    use {'nvim-lua/popup.nvim'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/nvim-cmp'}
    use {'L3MON4D3/LuaSnip'}
    use {'glepnir/zephyr-nvim'}
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    -- use 'RRethy/vim-illuminate'

    --[[ use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('gitsigns').setup()
        end
    }]]

end)
