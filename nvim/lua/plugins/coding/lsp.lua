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

        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    -- make the language server recognize "vim" global
                    diagnostics = {
                        globals = { "vim", "opts" },
                    },
                    workspace = {
                        -- make language server aware of runtime files
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })
        lspconfig.pyright.setup({
            capabilities = capabilities,
        })
        lspconfig.cssls.setup({
            capabilities = capabilities,
        })
        lspconfig.texlab.setup({
            capabilities = capabilities,
        })
        lspconfig.bashls.setup({
            capabilities = capabilities,
        })
        lspconfig.clangd.setup({
            capabilities = capabilities,
        })
        lspconfig.jdtls.setup({
            capabilities = capabilities,
        })
        lspconfig.hls.setup({
            capabilities = capabilities,
        }) -- haskell language server
        lspconfig.html.setup({
            capabilities = capabilities,
            filetypes = { "xhtml", "html", "markdown" },
        })
        lspconfig.rust_analyzer.setup({
            capabilities = capabilities,
            settings = {
                ["rust-analyzer"] = {
                    check = {
                        command = "clippy",
                    },
                    diagnostics = {
                        enable = true,
                    },
                },
            },
        })

        local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end
    end,

    vim.diagnostic.config({ virtual_text = false, float = { source = 'always', show_header = true } }),
    keys = {
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts),
        vim.keymap.set({ "n" }, "<leader>d", ":lua vim.diagnostic.open_float(nil, { focus = false })<CR>",
            { silent = true }),
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts),
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts),
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts),
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts),
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts),
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts),
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts),
    },

    --[[     enabled = false ]]
}
