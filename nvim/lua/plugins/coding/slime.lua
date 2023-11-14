return {
    "jpalardy/vim-slime",

    ft = {
        "python",
        "haskell",
    },
    config = function()
        vim.g.slime_target = "tmux"
    end,
}
