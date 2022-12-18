-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local term = require('harpoon.term')

vim.keymap.set('n', '<C-a>',function() mark.add_file() end)
vim.keymap.set('n', '<C-e>', function() ui.toggle_quick_menu() end)
vim.keymap.set('n', '<leader>h', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>j', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>k', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>l', function() ui.nav_file(4) end)
vim.keymap.set('n', '<leader>1', function() term.gotoTerminal(1) end)
vim.keymap.set('n', '<leader>2', function() term.gotoTerminal(2) end)
vim.keymap.set('n', '<leader>3', function() term.gotoTerminal(3) end)
vim.keymap.set('n', '<leader>4', function() term.gotoTerminal(4) end)

-- Neovim
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>w', vim.cmd.write)
vim.keymap.set('t', '<leader><ESC>', '<C-\\><C-n>')
vim.keymap.set('n', '<leader><leader>x', vim.cmd.so)
