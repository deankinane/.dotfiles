local map = vim.keymap.set

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local term = require('harpoon.term')

map('n', '<C-a>',function() mark.add_file() end)
map('n', '<C-h>', function() ui.toggle_quick_menu() end)
map('n', '<leader>h', function() ui.nav_file(1) end)
map('n', '<leader>j', function() ui.nav_file(2) end)
map('n', '<leader>k', function() ui.nav_file(3) end)
map('n', '<leader>l', function() ui.nav_file(4) end)
map('n', '<leader>1', function() term.gotoTerminal(1) end)
map('n', '<leader>2', function() term.gotoTerminal(2) end)
map('n', '<leader>3', function() term.gotoTerminal(3) end)
map('n', '<leader>4', function() term.gotoTerminal(4) end)

-- Neovim
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
map("i", "<C-c>", "<esc>yiwi<lt><esc>ea></><esc>hpF>i") -- convert any word to a full html open and closed tag
map('i', '<C-v>', '<esc>bi<<esc>ea/><esc>hi') -- convert any word into a self closing html tag
map('n', 'q', ':q<CR>')

-- nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<cr>')

-- diagnostics
map('n', '<leader>d', vim.diagnostic.open_float)

-- lspsaga
-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

-- Code action
map({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })

-- Rename
map("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })

-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Show line diagnostics
map("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Show cursor diagnostics
map("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- Outline
map("n","<leader>o", "<cmd>Lspsaga outline<CR>",{ silent = true })

-- Hover Doc
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Zen Mode
map('n', '<leader>z', ':ZenMode<CR>')
