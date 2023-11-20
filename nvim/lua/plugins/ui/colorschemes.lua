return {
    {
        "ellisonleao/gruvbox.nvim",

        config = function()
            require("gruvbox").setup({
                transparent_mode = true,
            })
            --[[ vim.o.background = "light" ]]
            vim.cmd.colorscheme("gruvbox")
        end,
    },

    {
        "folke/tokyonight.nvim",

        config = function()
            require("tokyonight").setup({
                style = "storm",
                --[[ style = "night", ]]
                --[[ style = "moon", ]]
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                },
            })
            --[[ vim.o.background = "light" ]]
            --[[ vim.cmd.colorscheme("tokyonight") ]]
        end,
    },
}
