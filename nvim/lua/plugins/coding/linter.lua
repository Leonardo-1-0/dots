return {
    "mfussenegger/nvim-lint",

    dependencies = { "williamboman/mason.nvim" },
    lazy = true,
    event = { "BufWritePost", "BufReadPost", "InsertLeave" },
    opts = {
        linters_by_ft = {
            ["lua"] = { "selene" },
            ["python"] = { "flake8", "mypy", "sonarlint-language-server" },
            ["bash"] = { "shellcheck" },
            ["java"] = { "sonarlint-language-server" },
            ["c"] = { "cpplint", "sonarlint-language-server" },
            ["c++"] = { "cpplint", "sonarlint-language-server" },
            ["sql"] = { "sqlfluff" },
            ["html"] = { "markuplint" },
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
