return {
    "williamboman/mason.nvim",

    init = function()
        require("mason").setup({})
    end,

    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
        ensure_installed = {
            -- lsp
            "lua-language-server",
            "pyright",
            "texlab",
            "html-lsp",
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
            "markuplint",
            "shellcheck ",
            "checkstyle",
            "cpplint",
            "sqlfluff",
        },
    },
}
