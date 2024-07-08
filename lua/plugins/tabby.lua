return {
  "nanozuki/tabby.nvim",
  event = "VimEnter", -- if you want lazy load, see below
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    -- configs...
    vim.g.tabby_trigger_mode = "manual"
    vim.api.nvim_set_keymap(
      "n",
      "<leader>te",
      ":let g:tabby_trigger_mode='auto'<CR>",
      { noremap = true, silent = true, desc = "Enable Tabby" }
    )
    vim.api.nvim_set_keymap(
      "n",
      "<leader>td",
      ":let g:tabby_trigger_mode='manual'<CR>",
      { noremap = true, silent = true, desc = "Disable Tabby" }
    )
  end,
}
