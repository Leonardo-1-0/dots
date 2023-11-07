return {
    "williamboman/mason.nvim",

    init = function()
        local mason = require("mason").setup()
    end,

    opts = {
        ensure_installed = {
            "lua-language-server",
            "pyright", -- lsp
            "mypy", -- python linter
            "flake8", -- python linter
            "black", -- python formatter
            "isort", -- python formatter
            "shellcheck",
            "shfmt",
            "texlab",
            "textlint",
            "clangd",
        },
    },
}
