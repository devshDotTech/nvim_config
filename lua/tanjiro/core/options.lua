vim.cmd("let g:netrw_liststyle = 3")
--vim.api.nvim_create_autocmd("highlight", {
--	callback = function()
--		vim.cmd("WinSeperator guifg=#1F2329")
--	end
--	})
local opt = vim.opt
opt.highlight.guifg = "#1f2329"
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2 -- tab size
opt.shiftwidth = 2 -- space for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy the indent of previous line

--search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case, assumes you want case sensitive

opt.cursorline = true

-- colorscheme for themes to work properly
opt.termguicolors = true
opt.background = "dark" -- dark colorscheme
opt.signcolumn = "yes" -- shows sign column so that color dont shift

-- backspace
opt.backspace = "indent,eol,start" -- allows backspace on indent

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- splits the window to right
opt.splitbelow = true -- splits the window to bottom



