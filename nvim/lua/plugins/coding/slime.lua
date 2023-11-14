return {
    "jpalardy/vim-slime",

    ft = {
        "python",
        "haskell",
        "sql",
    },
    config = function()
        vim.g.slime_target = "tmux"
    end,
}
