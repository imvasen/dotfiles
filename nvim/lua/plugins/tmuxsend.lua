return {
  "kiyoon/tmuxsend.vim",
  keys = {
    { "-", "<Plug>(tmuxsend-smart)", mode = { "n", "x" } },
    { "_", "<Plug>(tmuxsend-plain)", mode = { "n", "x" } },
    { "<space>-", "<Plug>(tmuxsend-uid-smart)", mode = { "n", "x" } },
    { "<space>_", "<Plug>(tmuxsend-uid-plain)", mode = { "n", "x" } },
    { "<C-_>", "<Plug>(tmuxsend-tmuxbuffer)", mode = { "n", "x" } },
  },
}
