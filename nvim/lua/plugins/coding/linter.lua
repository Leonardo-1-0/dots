return {
    "mfussenegger/nvim-lint",

    dependencies = { "williamboman/mason.nvim" },
    lazy = true,
    event = { "BufWritePost", "BufReadPost", "InsertLeave" },
    opts = {
        linters_by_ft = {
            ["python"] = { "flake8", "mypy" },
            ["latex"] = { "vale" },
            ["java"] = { "clang-format" },
            ["haskell"] = { "fourmolu" },
            ["c"] = { "clang-format" },
            ["c#"] = { "clang-format" },
            ["c++"] = { "clang-format" },
            ["sql"] = { "sqlfmt" },
            -- Use the "*" filetype to run linters on all filetypes.
            -- ['*'] = { 'global linter' },
            -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
            -- ['_'] = { 'fallback linter' },
        },
    },
    config = function()
        vim.api.nvim_create_autocmd({ "BufWritePost" }, {
            callback = function()
                require("lint").try_lint()
            end,
        })
    end,
}
