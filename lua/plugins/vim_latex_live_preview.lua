-- lua/plugins/vim_latex_live_preview.lua
return {
  "xuhdev/vim-latex-live-preview",
  config = function()
    vim.g.livepreview_previewer = "sioyek"
    vim.g.livepreview_engine = "latexmk"
  end,
  enabled = false,
}
