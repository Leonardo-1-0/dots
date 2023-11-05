return {
    "stevearc/conform.nvim",

    dependencies = { "williamboman/mason.nvim" },
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            sh = { "shfmt" },
        },
        format_on_save = {
            lsp_fallback = true,
            timeout_ms = 500,
        },
    }
}
