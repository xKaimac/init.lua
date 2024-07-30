local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- adds a file to the harpoon
vim.keymap.set("n", "<leader>a", mark.add_file)
-- Shows all files currently in the harpoon
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- switch between harpooned files (add more if you need more than 4)
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
