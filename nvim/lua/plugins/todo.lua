return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local comments = require('todo-comments')
    local wk = require('which-key')
    comments.setup()

    vim.keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<cr>', { desc = 'Search TODOs' })
    wk.add({
      { '<leader>ft', desc = 'Search TODOs', icon = ' ' },
    })
  end,
}
