local opts = {noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Open File Explorer
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", {desc = "Open file explorer", silent = true })

-- Sets Capital J as moving marked lines down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "moves lines down in visual selection" })
-- Sets Capital K as moving marked lines up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "moves lines up in visual selection" })

vim.keymap.set("n", "J", "mzJ`z") -- join current line with line below, keeping cursor line in place

vim.keymap.set("v", "<", "<gv", opts) -- "un-indent" lines marked
vim.keymap.set("v", ">", ">gv", opts) -- indent marked lines

vim.keymap.set("x", "<leader>p", [["_dP]]) -- paste without losing what was in your clipboard (normal mode)
vim.keymap.set("v", "p", '"_dp', opts) -- paste without losing what was in clipboard (visual mode)

-- This line gave problems with other "<leader>d..." commands... If needed find another binding
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- delete without replacing what is in clipboard

-- clears search hl with double Esc
vim.keymap.set("n",  "<Esc><Esc>", ":nohl<CR>", { desc = "Clear search hl", silent = true })

-- tab stuff
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")   --open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") --close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")     --go to next
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")     --go to pre
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") --open current tab in new tab

--split management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
-- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
-- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- close current split window
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
