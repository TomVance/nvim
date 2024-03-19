return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "solargraph", "rubocop", "ruby_ls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.ruby_ls.setup({})
      lspconfig.rubocop.setup({})
      lspconfig.solargraph.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'D', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '.', vim.lsp.buf.code_action, {})
    end
  }
}
