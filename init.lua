-- mapleader and maplocalleader must be set before lazy is estabslished
vim.g.mapleader = ' '
-- vim.g.localmapleader = '\\'

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- keymaps are in lua/config/keymaps.lua

-- require('plugins.nvim-tmux-navigation')

-- .setup {
--     disable_when_zoomed = true -- defaults to false
-- }

-- vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
-- vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
-- vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
-- vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
-- vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
-- vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
