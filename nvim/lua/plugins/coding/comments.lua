return {
    "numToStr/Comment.nvim",

    opts = {
        toggler = {
            line = "<leader>c", --Line-comment toggle keymap
            block = "<leader>c", --Block-comment toggle keymap
        },
        opleader = {
            line = "<leader>c", --Line-comment keymap
            block = "<leader>c", --Block-comment keymap
        },
        extra = {
            eol = "<leader>ac", --Add comment at the end of line
        },
    },
}
