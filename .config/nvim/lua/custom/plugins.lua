return function(use)

    use('ThePrimeagen/harpoon')
    use({
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    })
    use({
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    })
    use({
        'norcalli/nvim-colorizer.lua',
        config = function()
            require("colorizer").setup()
        end,
    })
    use("jose-elias-alvarez/null-ls.nvim")
    use("rafamadriz/friendly-snippets")
    use("deankinane/blaze.nvim")
    use("nvim-treesitter/playground")
    use({
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    })
end
