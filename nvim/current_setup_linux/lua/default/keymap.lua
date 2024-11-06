vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

------ greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP", {desc = "Paste"})

---- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y", {desc = "Yank"})
vim.keymap.set("v", "<leader>y", "\"+y", {desc = "Yank"})
vim.keymap.set("n", "<leader>Y", "\"+Y", {desc = "Yank"})

vim.keymap.set("n", "<leader>d", "\"_d", {desc = "Delete"})
vim.keymap.set("v", "<leader>d", "\"_d", {desc = "Delete"})

--vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>fa", function()
    vim.lsp.buf.format()
end, {desc = "format"} )

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", {desc = "Next error"})
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", {desc = "Previous error"})
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next lsp issue"} )
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Next lsp issue"})

vim.keymap.set("n", "<leader>ss", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>w", "<cmd>update!<CR>",
    { desc = "save" })


-- exit terminal mode
vim.keymap.set('t', '<leader>qe', '<C-\\><C-n>:q<Enter>')
vim.keymap.set('t', '<leader>qr', '<C-\\><C-n>')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
