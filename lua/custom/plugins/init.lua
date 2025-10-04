return {
  {
    'rdainton/share-context.nvim',
    config = function()
      local share_context = require 'share-context'

      -- Keybindings
      vim.keymap.set({ 'n', 'i', 'v' }, '<leader>cr', share_context.copy_context_relative, { desc = 'Copies [C]ontext [R]elative to CWD' })
      vim.keymap.set({ 'n', 'i', 'v' }, '<leader>cg', share_context.copy_context_git_relative, { desc = 'Copies [C]ontext relative to [G]it root' })
      vim.keymap.set({ 'n', 'i', 'v' }, '<leader>ca', share_context.copy_context_absolute, { desc = 'Copies [C]ontext with [A]bsolute path' })
    end,
  },
  {
    'rdainton/fiftyshades',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    lazy = false,
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
