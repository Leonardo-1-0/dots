return {
    "nvim-treesitter/nvim-treesitter",

    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    init = function(plugin)
        require("lazy.core.loader").add_to_rtp(plugin)
        require("nvim-treesitter.query_predicates")
    end,

    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local configs = require("nvim-treesitter.configs")
    end,
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
            "rust",
        },
    },
}
