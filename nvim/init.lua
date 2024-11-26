require('config.lazy')

-- Neovim init.lua
-- nvim-tree recommends disabling netrw, VIM's built-in file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Remove the white status bar below
vim.o.laststatus = 0

-- True colour support
vim.o.termguicolors = true


-- .vimrc stuff
vim.cmd 'set number'
vim.cmd 'syntax on'
vim.cmd [[ colorscheme tokyonight-night ]]
vim.cmd 'set directory^=$HOME/.config/nvim/tmp//'
vim.cmd 'nmap <Bs> <S-x>'

vim.o.cursorline = true

-- sudo write
vim.keymap.set('c', 'w!!', "w !sudo tee >/dev/null %", { silent = true })

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

require('nvim-treesitter.configs').setup({
  ensure_installed = { "lua", "markdown", "python", "typescript", "javascript" },
  highlight = {
    enable = true
  }
})
