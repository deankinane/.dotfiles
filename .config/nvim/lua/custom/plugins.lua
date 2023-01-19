return function(use)

    use('ThePrimeagen/harpoon')
    use({
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    })
    use({
        'max397574/better-escape.nvim',
        config = function()
            require('better_escape').setup()
        end,
    })
    use({
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end,
    })
    use('jose-elias-alvarez/null-ls.nvim')
    use('rafamadriz/friendly-snippets')
    use('folke/tokyonight.nvim')
    -- use('nvim-treesitter/playground')
    use({
        'glepnir/lspsaga.nvim',
        branch = 'main',
        config = function()
            local saga = require('lspsaga')

            saga.init_lsp_saga()
        end,
    })
    use({
        'folke/zen-mode.nvim',
        config = function()
            require('zen-mode').setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })
    use('mfussenegger/nvim-dap')
    use('mxsdev/nvim-dap-vscode-js')
    use('rcarriga/nvim-dap-ui')
    use('OmniSharp/omnisharp-vim')
end
