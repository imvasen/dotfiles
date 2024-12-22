return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        "lua",
        "markdown",
        "python",
        "typescript",
        "javascript",
        "tsx",
        "json",
        "bash",
      },
      highlight = {
        enable = true
      }
    })
  end,
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
}
