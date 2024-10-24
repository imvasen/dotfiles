require('config.lazy')

-- .vimrc stuff
vim.cmd 'set number'
vim.cmd 'syntax on'

-- sudo write
vim.keymap.set('c', 'w!!', "w !sudo tee >/dev/null %", { silent = true })
vim.keymap.set('c', 'fb', 'NvimTreeToggle')

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

-- vim tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

local function tree_on_attach(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)
	-- custom
	-- vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
	vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end

-- OR setup with some options
require("nvim-tree").setup({
  on_attach = tree_on_attach,
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
