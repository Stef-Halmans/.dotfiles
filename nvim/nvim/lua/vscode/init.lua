require("default.keymap")
require("default.set")

vim.cmd('source ' .. os.getenv("UserProfile") .. '/AppData/Local/nvim//lua/vscode/keymap.vim')

-- require("vscode.keymap_vim")
