vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.encoding = "utf-8"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
--vim.o.shell = '"C:/Program Files/PowerShell/7/pwsh.exe"'
vim.o.shell = "powershell.exe"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "/home/stef/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

-- decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300


-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

--vim.opt.signcolumn = "yes"

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.colorcolumn = "100"

vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus" -- Access system clipboard

vim.opt.signcolumn = "yes"


-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
--vim.cmd([[
--set signcolumn=yes
--autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
--]])


--local powershell_options = {
--  shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
--  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
--  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
--  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
--  shellquote = "",
--  shellxquote = "",
--}

--for option, value in pairs(powershell_options) do
--  vim.opt[option] = value
--end
