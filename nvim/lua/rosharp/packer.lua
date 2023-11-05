vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- colorschemes
    -- rose-pine/nvim
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- telescope 
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- nvim-treesitter/nvim-treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- theprimeagen/harpoon
    -- bookmarks like popup
    use('theprimeagen/harpoon')

    -- mbbill/undotree
    -- undo history
    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    -- lsp
    -- autocompleteion and suggestions
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- autopairs ("'[{
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- project management
    -- Lua
    use {
        "ahmedkhalf/project.nvim",
        config = function()
            pcall(require("telescope").load_extension, "fzf")
            pcall(require("telescope").load_extension, "projects")
            vim.keymap.set(
            "n",
            "<leader>fp",
            function() vim.cmd([[Telescope projects]]) end,
            { noremap = true })
            require("project_nvim").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                show_hidden = true
            }
        end
    }

end)
