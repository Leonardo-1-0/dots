return {
    -- Configure LazyVim to load the choosen theme
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
            -- colorscheme = "tokyonight",
        },
    },

    {
        "ellisonleao/gruvbox.nvim",
        opts = {
            transparent_mode = true,
        }
    },

    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    }
}
