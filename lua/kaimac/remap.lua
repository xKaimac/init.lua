vim.g.mapleader = " "
-- Goes to the explore menu in the directory of the file that you're in
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', { noremap = true })

-- When a block of text is selected, J/K will move it around the file
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When jumping around the file, the cursor will stay in the middle of the screen
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")

-- when text is highlighted, pastes over it without changing the copy buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yoinks some text to the system clipboard, not the buffer's
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- find and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Opens the error/warning window from lsp
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { noremap=true, silent=true })
