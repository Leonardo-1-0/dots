return {
    "williamboman/mason.nvim",

    init = function()
        local mason = require("mason").setup()
    end,

    opts = {
        ensure_installed = {
            "pyright",
            "black",
            "mypy",
            "flake8",
            "texlab",
            "textlint",
            "shellcheck",
            "clangd",
            "lua-language-server",
        }
    }
}
