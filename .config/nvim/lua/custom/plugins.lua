return function(use)

    use({'ThePrimeagen/harpoon',
        config = function ()
        end,
    })
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
    use("windwp/nvim-ts-autotag")
end
