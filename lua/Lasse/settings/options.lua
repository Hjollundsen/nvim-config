vim.opt.nu = true -- absolute line numbers
vim.opt.relativenumber = true -- relative line numbers

vim.opt.tabstop = 4             -- autoindent is 4 spaces
vim.opt.softtabstop = 4         -- autoindent is 4 spaces
vim.opt.shiftwidth = 4          -- tabs are 4 spaces
vim.opt.expandtab = true        -- tabs are made of spaces
vim.opt.autoindent = true       -- automatically indent new lines to same line as line before
vim.opt.smartindent = true      -- smartindentation
vim.opt.wrap = true             -- auto wrap lines

vim.opt.incsearch = true        -- Used to set Dynamic Search Highlighting
vim.opt.inccommand = "split"    -- Splits the window when doing commands into preview and current buffer
vim.opt.ignorecase = true       -- Searches ignore case
vim.opt.smartcase = true        -- Cases only matter when upper case is present

vim.opt.termguicolors = true    -- Enables full 24-bit RGB color support
vim.opt.scrolloff = 8           -- Keeps 8 lines visible above and below the cursor
vim.opt.signcolumn = "yes"      -- Always show the sign column (for git signs, diagnostics, etc.)

vim.opt.backspace = {"start", "eol", "indent"}  -- Allows backspace over indentation, line breaks, and start of insert

vim.opt.splitright = true       -- New vertical splits open to the right
vim.opt.splitbelow = true       -- New horizontal splits open below

vim.opt.isfname:append("@-@")   -- Treats '@' as a valid character in file names
vim.opt.updatetime = 50         -- Time (in ms) before triggering CursorHold events and plugin updates
vim.opt.colorcolumn = "120"     -- Displays a vertical guide at value passed

vim.opt.clipboard:append("unnamedplus")     -- Syncs Neovim clipboard with the system clipboard
vim.opt.hlsearch = true         -- highlights text that is searched

vim.opt.mouse = "a"             -- mouse support
vim.g.editorconfig = true       -- enables consistent coding styles across editors

