-- lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fc', builtin.grep_string, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
    vim.keymap.set('n', '<leader>gfc', builtin.git_bcommits, {})
    vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
    vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
  end
}