return {
    "echasnovski/mini.pick",

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
        {
            "<leader>fe",
            "<Cmd>Pick explorer<CR>",
        },
        {
            "<leader>fg",
            "<Cmd>Pick git_files<CR>",
        },
        {
            "<leader>fd",
            "<Cmd>Pick diagnostic<CR>",
        },
        {
            "<leader>fk",
            "<Cmd>Pick keymaps<CR>",
        },
        {
            "<leader>fo",
            "<Cmd>Pick options<CR>",
        },
        {
            "<leader>fb",
            "<Cmd>Pick buffers<CR>",
        },
        {
            "<leader>p",
            ":Pick ",
        },
    },
}
