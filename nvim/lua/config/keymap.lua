-- Keymaps
local wk = require('which-key')

local builtin = require('telescope.builtin')
-- No need to add wk here, it's auto-detected
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<M-p>', builtin.find_files, { desc = 'Telescope find files' })

-- sudo write
vim.keymap.set('c', 'w!!', "w !sudo tee >/dev/null %", { silent = true })

vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true })
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { silent = true })
vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true, desc = 'Write' })
vim.keymap.set('n', '<leader>ww', ':w<CR>', { silent = true, desc = 'Write' })
vim.keymap.set('n', '<leader>wq', ':wq<CR>', { silent = true, desc = 'Write and quit' })
vim.keymap.set('n', '<leader>W', ':w!!<CR>', { silent = true, desc = 'Write as sudo' })
vim.keymap.set('n', '<leader>U', ':Lazy sync<CR>', { silent = true, desc = 'Lazy sync' })
vim.keymap.set('n', '<leader>r', ':reg<CR>', { silent = true, desc = 'Show registers' })

wk.add({
  { '<leader>q', desc = 'Quit', icon = '󰈆 ' },
  { '<leader>Q', desc = 'Quit without saving', icon = '󰈆 ' },
  { '<leader>w', desc = 'Write', icon = '󰆓 ' },
  { '<leader>ww', desc = 'Write', icon = '󰆓 ' },
  { '<leader>wq', desc = 'Write and quit', icon = '󰸧 ' },
  { '<leader>W', desc = 'Write as sudo', icon = '󰽂 ' },
  { '<leader>U', desc = 'Lazy sync', icon = ' ' },
  { '<leader>r', desc = 'Show registers', icon = ' ' },
  { '<leader>ee', desc = 'Harpoon explore', icon = '󱡀 ' },
  { '<leader>ea', desc = 'Harpoon add', icon = '󱡀 ' },
})
