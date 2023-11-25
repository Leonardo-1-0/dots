return {
    {
        "ellisonleao/gruvbox.nvim",

        config = function()
            require("gruvbox").setup({
                transparent_mode = true,
            })
            --[[ vim.cmd.colorscheme("gruvbox") ]]
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
            --[[ vim.cmd.colorscheme("tokyonight") ]]
        end,
    },

    {
        "sainnhe/sonokai",

        config = function()
            --[[ vim.g.sonokai_style = "default" ]]
            vim.g.sonokai_style = "andromeda"
            vim.g.sonokai_better_performance = 1
            vim.cmd.colorscheme("sonokai")
        end,
    },
}
