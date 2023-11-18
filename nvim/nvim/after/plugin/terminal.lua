if vim.g.vscode then
  return
end
local Terminal  = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  float_opts = {
    border = "double",
  },
})

function lazygit_toggle()
  lazygit:toggle()
end

local lazydocker = Terminal:new({
  cmd = "lazydocker",
  direction = "float",
  float_opts = {
    border = "double",
  },
})

function lazydocker_toggle()
  lazydocker:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>dl", "<cmd>lua lazydocker_toggle()<CR>", {noremap = true, silent = true})

vim.keymap.set("n", "<leader>t", ":ToggleTerm<Enter>", {desc = "Open terminal"})


