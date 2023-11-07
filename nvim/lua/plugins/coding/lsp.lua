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

        lspconfig.pyright.setup({
            capabilities = capabilities,
        })
        lspconfig.texlab.setup({
            capabilities = capabilities,
        })
        lspconfig.clangd.setup({
            capabilities = capabilities,
        })
        lspconfig.jdtls.setup({
            capabilities = capabilities,
        })
        lspconfig.hls.setup({}) -- haskell language server
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

        local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end
    end,

    keys = {
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts),
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts),
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts),
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts),
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts),
        -- vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts),
        -- vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts),
        -- vim.keymap.set("n", "<space>wl", function()
        --     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        -- end, opts),
        vim.keymap.set("n", "<space>d", vim.lsp.buf.type_definition, opts),
        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts),
        vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts),
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts),
        vim.keymap.set("n", "<space>f", function()
            vim.lsp.buf.format({ async = true })
        end, opts),
    },
}
