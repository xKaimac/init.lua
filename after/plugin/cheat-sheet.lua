local chtsht = require("cheat-sheet");

chtsht.setup({

})


vim.api.nvim_set_keymap('n', '<leader>ch', ':CheatSH<Space>', { noremap = true, silent = false })
