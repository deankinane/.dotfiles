return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
    use("olimorris/onedarkpro.nvim")
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
    use({
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    })
    use({
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    })
    -- use("windwp/nvim-ts-autotag")
end)
