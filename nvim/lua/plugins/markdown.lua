return {
    "iamcco/markdown-preview.nvim",

    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
    config = function()
        vim.g.mkdp_auto_start = 0
        vim.g.mkdp_auto_close = 0
        vim.g.mkdp_refresh_slow = 0
        vim.g.mkdp_browser = "/usr/bin/firefox"
        vim.g.mkdp_theme = "light"
    end,
    keys = {
        vim.keymap.set(
            "n",
            "<leader>mp",
            ":MarkdownPreviewToggle<CR>",
            { noremap = true, silent = true }
        ),
    },
}
