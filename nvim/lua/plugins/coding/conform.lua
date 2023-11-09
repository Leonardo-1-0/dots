return {
    "stevearc/conform.nvim",

    dependencies = { "williamboman/mason.nvim" },
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            latex = { "latexindent" },
            sh = { "shfmt" },
            java = { "clang-format" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            sql = { "sqlfmt" },
        },
        format_on_save = {
            lsp_fallback = true,
            timeout_ms = 500,
        },
    },
}
