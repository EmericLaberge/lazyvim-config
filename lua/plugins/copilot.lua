-- lua/plugins/copilot.lua
return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_filetypes = {['*'] = false}
    function EnableCopilotForBuffer()
      vim.api.nvim_buf_set_var(0, 'copilot_enabled', true)
    end
    function DisableCopilotForBuffer()
      vim.api.nvim_buf_set_var(0, 'copilot_enabled', false)
    end
    vim.api.nvim_set_keymap('n', '<Leader>ce', '<cmd>lua EnableCopilotForBuffer()<CR>', { noremap = true, silent = true, desc = "Enable Copilot"})
    vim.api.nvim_set_keymap('n', '<Leader>cd', '<cmd>lua DisableCopilotForBuffer()<CR>', { noremap = true, silent = true, desc = "Disable Copilot"})
  end
}