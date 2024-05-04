-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

vim.api.nvim_create_autocmd({"FocusGained","BufEnter","CursorHold","CursorHoldI"}, {
  group = augroup("auto_reload_buffer"),
  callback = function()
    -- if vim.o.buftype ~= "nofile" then
    --   vim.cmd("checktime")
    -- end
    if vim.api.nvim_get_mode().mode:match('[^crt]') and vim.fn.getcmdwintype() == '' then
        vim.cmd('checktime')
    end
  end,
})

vim.api.nvim_create_autocmd({"FileChangedShellPost"}, {
  group = augroup("file_changed_notification"),
  callback = function()
      vim.cmd('echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None')
  end
})

-- autocmds.add_augroups({
--     auto_reload_buffer = {
--         {'FocusGained,BufEnter,CursorHold,CursorHoldI', '*', function()
--             if vim.api.nvim_get_mode().mode:match('[^crt]') and vim.fn.getcmdwintype() == '' then
--                 vim.cmd('checktime')
--             end
--         end}
--     },
--     file_changed_notification = {
--         {'FileChangedShellPost', '*',
--         function()
--             vim.cmd('echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None')
--         end
--       }
--     }
-- })
