-- lua/plugins/lazydocker.lua
return {
  "kdheepak/lazygit.nvim",
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>ld', ':LazyGit<CR>', { noremap = true, silent = true })
  end
}