-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'rdainton/fiftyshades',
    config = function()
      require('fiftyshades').setup {}
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()

      -- Keybindings
      vim.keymap.set('v', '<D-/>', '<Plug>(comment_toggle_linewise_visual)', { desc = 'Comment toggle linewise (visual)' })
      vim.keymap.set('n', '<D-/>', '<Plug>(comment_toggle_linewise_current)', { desc = 'Comment toggle current line' })
      vim.keymap.set('i', '<D-/>', '<C-o><Plug>(comment_toggle_linewise_current)', { desc = 'Comment toggle current line (insert)' })
    end,
  },
  {
    'smithbm2316/centerpad.nvim',
  },
}
