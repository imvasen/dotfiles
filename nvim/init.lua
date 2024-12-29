require('config.lazy')
require('lualine').setup()
require('config.lsp')
require('config.harpoon')
require('config.keymap')

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
