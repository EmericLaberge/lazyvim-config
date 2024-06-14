-- lua/plugins/vimtex.lua
return {
  "lervag/vimtex",
  config = function()
    vim.g.vimtex_quickfix_mode = 0
    vim.g.tex_flavor = 'latex'
    vim.g.vimtex_compiler_progname = 'nvr'
    vim.g.vimtex_view_method = 'sioyek'
    vim.api.nvim_set_hl(0, 'Conceal', { fg = '#50fa7b', bg = 'none' })
  end
}