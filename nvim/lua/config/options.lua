vim.g.mapleader = " "

vim.cmd("syntax on")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set clipboard+=unnamedplus") -- sync nvim with system clipboard

-- General Vim bindings
vim.keymap.set("n", "oo", "o<Esc>k", { noremap = true })
vim.keymap.set("n", "OO", "O<Esc>j", { noremap = true })
vim.keymap.set("n", "z", "zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })

-- Tabs = 4 spaces
vim.o.tabstop = 4 -- Number of spaces a TAB counts for
vim.o.shiftwidth = 4 -- Number of spaces to use for auto-indent
vim.o.softtabstop = 4 -- Number of spaces to insert for TAB in insert mode
vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.smartindent = true

vim.o.guicursor = "" -- Make cursor fat in insert-mode

vim.g.autoformat = true
vim.o.cursorline = true -- Enable highlighting of the current line
vim.o.list = true -- Show some invisible characters (tabs...
vim.o.mouse = "a" -- Enable mouse mode
vim.o.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.termguicolors = true -- True color support so notify doesn't bitch
vim.o.colorcolumn = "120"
vim.o.scrolloff = 8
vim.o.swapfile = false
vim.o.splitright = true

-- folding
vim.o.foldmethod = "indent" -- set folding groups to be automatically detected by indentation (as opposed to manually)
vim.cmd("set foldlevelstart=5") -- set all folds open when entering a buffer. Set to 0 to have them all closed when opening a buffer.
local function map(l, r)
    vim.keymap.set({ "n", "v" }, l, r, { noremap = true, silent = true })
end
map("<leader>zc", "zc")
map("<leader>zo", "zo")
map("<leader>zC", "zC")
map("<leader>zO", "zO")
map("<leader>zm", "zM")
map("<leader>zn", "zn")
