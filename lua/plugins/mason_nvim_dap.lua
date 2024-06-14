-- lua/plugins/mason_nvim_dap.lua
return {
  "jayp0521/mason-nvim-dap.nvim",
  config = function()
    require('mason-nvim-dap').setup({
      ensure_installed = {'stylua', 'jq'},
      handlers = {
        function(config)
          require('mason-nvim-dap').default_setup(config)
        end,
        python = function(config)
          config.adapters = {
            type = "executable",
            command = "/usr/bin/python3",
            args = {
              "-m",
              "debugpy.adapter",
            },
          }
          require('mason-nvim-dap').default_setup(config)
        end,
      },
    })
  end
}