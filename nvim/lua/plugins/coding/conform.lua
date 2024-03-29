return {
    "stevearc/conform.nvim",

    dependencies = { "williamboman/mason.nvim" },
    lazy = true,
    event = { "BufReadPre", "BufNewFile", "InsertLeave" },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            latex = { "latexindent" },
            html = { "htmlbeautifier" },
            markdown = { "mdformat" },
            sh = { "shfmt" },
            java = { "google-java-format" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            sql = { "sqlfmt" },
            rust = { "rustfmt" },
        },
        format_on_save = {
            lsp_fallback = true,
            timeout_ms = 500,
        },
    },
}
