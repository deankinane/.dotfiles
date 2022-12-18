vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<C-a>',function() mark.add_file() end)
vim.keymap.set('n', '<C-e>', function() ui.toggle_quick_menu() end)
vim.keymap.set('n', '<leader>h', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>j', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>k', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>l', function() ui.nav_file(4) end)

