return {
    "nvim-treesitter/nvim-treesitter",

    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    init = function(plugin)
        require("lazy.core.loader").add_to_rtp(plugin)
        require("nvim-treesitter.query_predicates")
    end,

    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
        config = function()
            local configs = require("nvim-treesitter.configs")
        end,
    },
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "python",
            "bash",
            "c",
            "diff",
            "html",
            "json",
            "lua",
            "markdown",
            "markdown_inline",
            "query",
            "regex",
            "toml",
            "vim",
            "vimdoc",
            "yaml",
        },
    }
}
