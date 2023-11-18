return {
    "echasnovski/mini.pick",

    lazy = false,
    dependencies = {
        "BurntSushi/ripgrep",
        "echasnovski/mini.extra",
    },
    config = function()
        require("mini.extra").setup()
        require("mini.pick").setup({
            mappings = {
                choose = "<CR>",
                choose_in_split = "<C-s>",
                choose_in_tabpage = "<C-t>",
                choose_in_vsplit = "<C-v>",

                move_down = "<Down>",
                move_up = "<Up>",

                toggle_preview = "<Tab>",

                stop = "<Esc>" or "<C-[>",
            },
        })
    end,
    keys = {
        vim.keymap.set(
            "n",
            "<leader>fe",
            "<Cmd>Pick explorer<CR>",
            { silent = true, noremap = true }
        ),
        vim.keymap.set(
            "n",
            "<leader>fg",
            "<Cmd>Pick git_files<CR>",
            { silent = true, noremap = true }
        ),
        vim.keymap.set("n", "<leader>p", ":Pick ", { noremap = true }),
    },
}
