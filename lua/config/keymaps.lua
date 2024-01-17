-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Remap for dealing with word wrap
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
-- vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit<Return><C-w>w')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set("n", "<S-Up>", "<cmd>resize +2<CR>")
keymap.set("n", "<S-Down>", "<cmd>resize -2<CR>")
keymap.set("n", "<S-Right>", "<cmd>vertical resize -2<CR>")
keymap.set("n", "<S-Left>", "<cmd>vertical resize +2<CR>")

-- Edit Files
keymap.set('n', '<C-s>', ':silent w<CR>')
keymap.set('n', '<S-q>', ':wq!<CR>')
keymap.set('n', 'qq', ':q!<CR>')
keymap.set('n', '<C-e>', ':e .<CR>')
keymap.set('n', 'rn', ':IncRename ')

-- Paste over currently selected text without yanking it
keymap.set("v", "p", '"_dP')

-- TODO loc list
-- keymap.set('n', '<A-l>j', ':TodoLocList<CR>')


-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
