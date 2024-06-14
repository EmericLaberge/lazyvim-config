-- lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "javascript",
        "typescript",
        "c",
        "lua",
        "rust",
        "python",
        "json",
        "html",
        "css",
        "java",
        "bash",
        "haskell",
      },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
        disable = { "yaml" },
      },
    })
  end,
}

