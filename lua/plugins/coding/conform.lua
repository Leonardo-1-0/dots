return {
    "stevearc/conform.nvim",

    dependencies = { "williamboman/mason.nvim" },
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            latex = { "vale" },
            java = { "checkstyle" },
            c = { "cpplint" },
            cpp = { "cpplint" },
            sql = { "sqlfluff" },
            sh = { "shfmt" },
        },
        format_on_save = {
            lsp_fallback = true,
            timeout_ms = 500,
        },
    },
}
