local function nvim_tree_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set("n", "u", api.tree.change_root_to_node, opts "Dir up")
  vim.keymap.set("n", "<F1>", api.node.show_info_popup, opts "Show info popup")
  -- vim.keymap.set("n", "l", nt_remote.tabnew, opts "Open in treemux")
  -- vim.keymap.set("n", "<CR>", nt_remote.tabnew, opts "Open in treemux")
  -- vim.keymap.set("n", "<C-t>", nt_remote.tabnew, opts "Open in treemux")
  -- vim.keymap.set("n", "<2-LeftMouse>", nt_remote.tabnew, opts "Open in treemux")
  vim.keymap.set("n", "h", api.tree.close, opts "Close node")
  -- vim.keymap.set("n", "v", nt_remote.vsplit, opts "Vsplit in treemux")
  -- vim.keymap.set("n", "<C-v>", nt_remote.vsplit, opts "Vsplit in treemux")
  -- vim.keymap.set("n", "<C-x>", nt_remote.split, opts "Split in treemux")
  -- vim.keymap.set("n", "o", nt_remote.tabnew_main_pane, opts "Open in treemux without tmux split")

  vim.keymap.set("n", "-", "", { buffer = bufnr })
  vim.keymap.del("n", "-", { buffer = bufnr })
  vim.keymap.set("n", "<C-k>", "", { buffer = bufnr })
  vim.keymap.del("n", "<C-k>", { buffer = bufnr })
  vim.keymap.set("n", "O", "", { buffer = bufnr })
  vim.keymap.del("n", "O", { buffer = bufnr })
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvim_tree = require "nvim-tree"

    nvim_tree.setup {
      on_attach = nvim_tree_on_attach,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      renderer = {
        --root_folder_modifier = ":t",
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              arrow_open = "",
              arrow_closed = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "",
              staged = "S",
              unmerged = "",
              renamed = "➜",
              untracked = "U",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      view = {
        width = 30,
        side = "left",
      },
      filters = {
        custom = { ".git" },
      },
    }
  end,
}
