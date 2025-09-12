-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    dir = '~/Apps/fiftyshades',
    name = 'fiftyshades',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'fiftyshades'
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()

      -- Keybindings
      vim.keymap.set('v', '<D-/>', '<Plug>(comment_toggle_linewise_visual)', { desc = 'Comment toggle linewise (visual)' })
      vim.keymap.set('n', '<D-/>', '<Plug>(comment_toggle_linewise_current)', { desc = 'Comment toggle current line' })
    end,
  },
  {
    'smithbm2316/centerpad.nvim',
  },
}
