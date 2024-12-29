return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope')
    local tConfig = require('telescope.config')
    local vimgrep_arguments = { unpack(tConfig.values.vimgrep_arguments) }

    telescope.setup({
      defaults = { vimgrep_arguments = vimgrep_arguments },
      pickers = {
        find_files = {
          find_command = { 'rg', '--files', '--hidden', '--glob', '!**/.git/*' },
        },
      },
    })
  end,
}
