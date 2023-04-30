if vim.g.vscode then
  return
end
--vim.cmd("colorscheme tokyonight")
require("github-theme").setup({
    theme_style = "dark",
})
--vim.cmd("colorscheme rose-pine")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


vim.cmd("highlight SignColumn guibg=NONE")
