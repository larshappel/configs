-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- vim.api.nvim_exec('language en_US', true) -- deprecated
vim.cmd("language en_US", true)
vim.cmd("colorscheme catppuccin-frappe", true)
