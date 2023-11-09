return {
    "mfussenegger/nvim-lint",

    dependencies = { "williamboman/mason.nvim" },
    lazy = true,
    event = { "BufWritePost", "BufReadPost", "InsertLeave" },
    opts = {
        linters_by_ft = {
            ["lua"] = { "selene" },
            ["python"] = { "flake8", "mypy" },
            ["latex"] = { "texlint" },
            ["bash"] = { "shellcheck" },
            ["java"] = { "checkstyle" },
            ["c"] = { "cpplint" },
            ["c++"] = { "cpplint" },
            ["sql"] = { "sqlfluff" },
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
