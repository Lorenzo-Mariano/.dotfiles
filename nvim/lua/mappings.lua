vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }

-- Unhighlight
map("n", "<Esc>", ":noh<CR>", opts)

-- Ctrl + S to save file
map("n", "<C-s>", ":wa<CR>", opts)
map("i", "<C-s>", "<ESC>:wa<CR>", opts)

-- Use "y" to copy wo the system clipboard
map("v", "y", '"+y', opts)
map("n", "yy", '"+yy', opts)

-- kill buffer
map("n", "<leader>bd", ":bd<CR>", opts)

-- Resizing nicely
map("n", "<leader>vr", ":resize ", opts)
map("n", "<leader>xr", ":vertical resize ", opts)
