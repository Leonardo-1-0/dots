-- usage:

-- Navigate:
--
--     Press j/k to navigate down/up.
--     Press l to expand entry under cursor: show directory or open file in the most recent window.
--     Press h to go to parent directory.
--     Type g? for more information about other available mappings.
--     Move as in any other buffer ($, G, f/t, etc.).
--
--  Manipulate:
--
--      Edit files and names like writing text in vim.
--      Create files by adding a new line (oo) and writing the file name in it.
--      Save changes by typing = and y to apply changes or n to cancel.

return {
    "echasnovski/mini.files",

    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        windows = {
            preview = true,
            width_focus = 40,
            width_preview = 60,
        },
    },
    keys = {
        {
            "<leader>ff",
            function()
                require("mini.files").open(vim.loop.cwd(), true)
            end,
            desc = "Open mini.files (cwd)",
        },
    },
    enabled = false
}
