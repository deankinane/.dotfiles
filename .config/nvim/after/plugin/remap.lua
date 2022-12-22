local map = vim.keymap.set

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local term = require('harpoon.term')

map('n', '<C-a>',function() mark.add_file() end)
map('n', '<C-e>', function() ui.toggle_quick_menu() end)
map('n', '<leader>h', function() ui.nav_file(1) end)
map('n', '<leader>j', function() ui.nav_file(2) end)
map('n', '<leader>k', function() ui.nav_file(3) end)
map('n', '<leader>l', function() ui.nav_file(4) end)
map('n', '<leader>1', function() term.gotoTerminal(1) end)
map('n', '<leader>2', function() term.gotoTerminal(2) end)
map('n', '<leader>3', function() term.gotoTerminal(3) end)
map('n', '<leader>4', function() term.gotoTerminal(4) end)

-- Neovim
map('n', '<leader>pv', vim.cmd.Ex)
map('n', '<leader>w', vim.cmd.write)
map('t', '<leader><ESC>', '<C-\\><C-n>')
map('n', '<leader><leader>x', vim.cmd.so)
map('n', '<leader>c', ':bd<cr>')

map("v", "J", ":m '>+1<CR>gv=gv") -- Move selection up and down
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<C-d>", "<C-d>zz") -- Half page jumping
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv") -- Keep search results in middle of screen
map("n", "N", "Nzzzv")

map("x", "<leader>p", [["_dP]]) -- Paste over selection while preserving register

map({"n", "v"}, "<leader>y", [["+y]]) -- Copy to system clipboard
map("n", "<leader>Y", [["+Y]])

map({"n", "v"}, "<leader>d", [["_d]]) -- Delete to void register

map("n", "Q", "<nop>")

