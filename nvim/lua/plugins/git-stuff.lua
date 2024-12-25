return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        on_attach = function(bufnr)
          local gitsigns = require('gitsigns')

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map('n', ']c', function()
            if vim.wo.diff then
              vim.cmd.normal({ ']c', bang = true })
            else
              gitsigns.nav_hunk('next')
            end
          end)

          map('n', '[c', function()
            if vim.wo.diff then
              vim.cmd.normal({ '[c', bang = true })
            else
              gitsigns.nav_hunk('prev')
            end
          end)

          -- Actions
          local wk = require("which-key")
          wk.add({
            {
              '<leader>hs',
              desc = 'Stage hunk',
              icon = {
                icon = '󱓊 ',
                color = 'green',
              }
            },
            {
              '<leader>hr',
              desc = 'Reset hunk',
              icon = {
                icon = '󱓋 ',
                color = 'red',
              }
            },
            {
              '<leader>hS',
              desc = 'Stage buffer',
              icon = {
                icon = '󱓊 ',
                color = 'green',
              }
            },
            {
              '<leader>hu',
              desc = 'Undo stage hunk',
              icon = {
                icon = '󱓋 ',
                color = 'red',
              }
            },
            {
              '<leader>hR',
              desc = 'Reset buffer',
              icon = {
                icon = '󱓊 ',
                color = 'red',
              }
            },
            {
              '<leader>hp',
              desc = 'Preview hunk',
              icon = {
                icon = ' ',
                color = 'orange',
              }
            },
            {
              '<leader>hn',
              desc = 'Next hunk',
              icon = ' ',
            },
            {
              '<leader>hb',
              desc = 'Blame line',
              icon = ' '
            },
            {
              '<leader>tb',
              desc = 'Toggle current line blame',
              icon = ' ',
            },
            {
              '<leader>hd',
              desc = 'Diff this',
              icon = ' ',
            },
            {
              '<leader>hD',
              desc = 'Diff this (full)',
              icon = ' ',
            },
            {
              '<leader>td',
              desc = 'Toggle deleted',
              icon = ' ',
            },
          })

          map('n', '<leader>hs', gitsigns.stage_hunk)
          map('n', '<leader>hr', gitsigns.reset_hunk)
          map('v', '<leader>hs', function() gitsigns.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end)
          map('v', '<leader>hr', function() gitsigns.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end)
          map('n', '<leader>hS', gitsigns.stage_buffer)
          map('n', '<leader>hu', gitsigns.undo_stage_hunk)
          map('n', '<leader>hR', gitsigns.reset_buffer)
          map('n', '<leader>hp', gitsigns.preview_hunk)
          map('n', '<leader>hb', gitsigns.blame)
          map('n', '<leader>hn', gitsigns.next_hunk)
          map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
          map('n', '<leader>hd', gitsigns.diffthis)
          map('n', '<leader>hD', function() gitsigns.diffthis('~') end)
          map('n', '<leader>td', gitsigns.toggle_deleted)

          -- Text object
          map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
        end
      }
    end,
  },
}
