vim.g.mapleader = " "

local keymap = vim.keymap --

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode using jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights" })

-- increment/decrement a number
keymap.set("n","<leader>+","<C-a>",{ desc = "increment a number" })
keymap.set("n","<leader>-","<C-x>",{ desc = "decrement a number" })
-- split the windows
keymap.set("n","<leader>sv","<C-w>v",{ desc = "Splits a window vertically" })
keymap.set("n","<leader>sh","<C-w>s",{ desc = "Splits a window horizontally" })
keymap.set("n","<leader>se","<C-w>=",{ desc = "makes splits equal sized" })
keymap.set("n","<leader>sx","<cmd>close<CR>",{ desc = "Close current split" })
-- managing tabs
keymap.set("n","<leader>to","<cmd>tabnew<CR>",{ desc = "open new tab to right" })
keymap.set("n","<leader>tx","<cmd>tabclose<CR>",{ desc = "Close current tab" })
keymap.set("n","<leader>tn","<cmd>tabn<CR>",{ desc = "go to next tab" })
keymap.set("n","<leader>tp","<cmd>tabp<CR>",{ desc = "go to previous tab" })
keymap.set("n","<leader>tf","<cmd>tabnew %<CR>",{ desc = "Open current buffer in new tab" })
-- managing buffers
keymap.set("n", "<S-h>", "<cmd>bp<CR>", { desc = "Go to Previous buffer" })
keymap.set("n", "<S-l>", "<cmd>bn<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<S-x>", "<cmd>bd<CR>", { desc = "Go to Previous buffer" })
