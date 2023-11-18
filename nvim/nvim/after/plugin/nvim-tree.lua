if vim.g.vscode then
  return
end
require("nvim-tree").setup {
    disable_netrw = true,
    hijack_netrw = true,
    view = {
      number = true,
      relativenumber = true,
    },
    git = {
       ignore = false,
    },
    filters = {
      custom = { ".git/" },
      dotfiles = true,
   }
}

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
