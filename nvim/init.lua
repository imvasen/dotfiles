require('config.lazy')
require('lualine').setup()
require('config.lsp')

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
-- True colour support
vim.cmd.colorscheme('tokyonight-night')

-- Neovim init.lua
-- nvim-tree recommends disabling netrw, VIM's built-in file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Remove the white status bar below
vim.o.laststatus = 0

-- .vimrc stuff
vim.cmd 'syntax on'
vim.cmd 'set directory^=$HOME/.config/nvim/tmp//'
vim.cmd 'nmap <Bs> <S-x>'
vim.o.cursorline = true

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- sudo write
vim.keymap.set('c', 'w!!', "w !sudo tee >/dev/null %", { silent = true })
vim.keymap.set('n', '<M-p>', ':Telescope find_files<CR>', { silent = true })
vim.keymap.set('n', '<C-a>', '<Home>')
vim.keymap.set('i', '<C-a>', '<Home>')
vim.keymap.set('n', '<C-e>', '<End>')
vim.keymap.set('i', '<C-e>', '<End>')

vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true })
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { silent = true })
vim.keymap.set('n', '<leader>ww', ':w<CR>', { silent = true })
vim.keymap.set('n', '<leader>wq', ':wq<CR>', { silent = true })
vim.keymap.set('n', '<leader>W', ':w!!<CR>', { silent = true })
vim.keymap.set('n', '<leader>U', ':Lazy sync<CR>', { silent = true })

vim.opt.tabstop = 2

-- Reserve a space in gutter to avoid layout shift
vim.opt.signcolumn = 'number'
vim.opt.number = true
vim.opt.list = true
vim.opt.listchars = { tab = '▸ ', trail = '·', nbsp = '␣' }
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.opt.colorcolumn = '80,120'
vim.cmd 'highlight ColorColumn ctermbg=130 guibg=#444444'
vim.opt.wrap = false

-- vim tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
