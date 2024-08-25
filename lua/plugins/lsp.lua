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
        ensure_installed = {"lua_ls",}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      local wk = require("which-key")
      wk.add({
        {"<leader>c", group = "Code"},
        {"<leader>cd", vim.lsp.buf.definition, desc = "Go to definition"},
        {"<leader>cD", vim.lsp.buf.declaration, desc = "Go to declaration"},
        {"<leader>cr", vim.lsp.buf.references, desc = "Find references"},
        {"<leader>ca", vim.lsp.buf.code_action, desc = "Code action"},
        {"h", "Hover"},
      })
    end
  }
}
