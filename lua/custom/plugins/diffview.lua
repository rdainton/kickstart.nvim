return {
  {
    'sindrets/diffview.nvim',

    config = function()
      local diffview = require 'diffview'

      vim.keymap.set('n', '<leader>go', diffview.open, { desc = 'Diffview [G]it [O]pen' })
      vim.keymap.set('n', '<leader>gc', diffview.close, { desc = 'Diffview [G]it [C]lose' })
    end,
  },
}
