return {
    "neovim/nvim-lspconfig",

    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local capabilities = cmp_nvim_lsp.default_capabilities()

        lspconfig.pyright.setup({})
        lspconfig.lua_ls.setup({})
    end,
    keys = {
        vim.keymap.set("n", "<space>e", vim.diagnostic.open_float),
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts),
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts),
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts),
        vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts),
        vim.keymap.set("n", "<space>f", function()
            vim.lsp.buf.format({ async = true })
        end, opts),
    },
}
