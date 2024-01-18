return {
    "nvim-tree/nvim-tree.lua",
    version      = "*",
    lazy         = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    init         = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
    end,
    opts         = {
        view = {
            width = 25,
        },
        filters = {
            dotfiles = false,
        },

        vim.keymap.set('n', '<leader>t', '<cmd>NvimTreeToggle<CR>', { silent = true }),
    },
}
