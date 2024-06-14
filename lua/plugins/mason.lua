-- lua/plugins/mason.lua
return {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
    local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
    if not status_ok then
      vim.notify("Problem with mason-lspconfig")
      return
    end
    mason_lspconfig.setup {
      automatic_installation = true
    }
    local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
    if not status_ok then
      vim.notify("Problems with lspconfig")
      return
    end
    local on_attach = function(client, bufnr)
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
      vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
      vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, bufopts)
      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
      vim.keymap.set('n', '<space>f', vim.lsp.buf.format, bufopts)
    end
    mason_lspconfig.setup_handlers {
      function(server_name)
        lspconfig[server_name].setup {
          on_attach = on_attach,
          flags = lsp_flags,
        }
      end
    }
  end
}