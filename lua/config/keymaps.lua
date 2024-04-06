-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set('n', '<leader>fn', ':echo expand("%:p")<CR>')
vim.keymap.set('n', '<leader>cl', ':set cursorline<cr>')
vim.keymap.set('n', '<leader>l', ':set scrolloff=999<cr>')
vim.keymap.set('n', '<leader>nl', ':set scrolloff=0<cr>')
vim.keymap.set('n', '<leader>bdd', ':%bd|e#<cr>')
vim.keymap.set('n', '<leader>dm', ':delmarks ')
vim.keymap.set('n', '<leader>mm', ':marks<cr>')

--
-- vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
-- vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
-- vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
-- vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
-- vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
-- vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

