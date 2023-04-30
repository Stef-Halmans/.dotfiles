if vim.g.vscode then
  return
end
vim.keymap.set("n", "<leader>t", ":ToggleTerm<Enter>", {desc = "Open terminal"})

vim.keymap.set("n", "<leader>a", "a", {desc = "Test"})
