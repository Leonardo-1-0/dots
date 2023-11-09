return {
    "williamboman/mason.nvim",

    init = function()
        local mason = require("mason").setup()
    end,

    opts = {
        ensure_installed = {
            -- lsp
            "lua-language-server",
            "pyright",
            "texlab",
            "bash-language-server",
            "clangd",
            "jdtls",
            "haskell-language-server",
            "sqlls",

            -- formatters
            "stylua",
            "isort",
            "black",
            "latexindent",
            "shfmt",
            "clang-format",
            "sqlfmt",

            -- linters
            "selene",
            "flake8",
            "mypy",
            "texlint",
            "shellcheck ",
            "checkstyle",
            "cpplint",
            "sqlfluff",
        },
    },
}
