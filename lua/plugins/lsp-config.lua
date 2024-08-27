return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
      lspconfig.tailwindcss.setup({
        capabilities = capabilities
      })
      lspconfig.cssls.setup({
        capabilities = capabilities
      })
			local wk = require("which-key")
			wk.add({
				{ "<leader>c", group = "code" },
				{ "<leader>cd", vim.lsp.buf.definition, desc = "Go to definition" },
				{ "<leader>cD", vim.lsp.buf.declaration, desc = "Go to declaration" },
				{ "<leader>cr", vim.lsp.buf.references, desc = "Find references" },
				{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code action" },
				{ "<leader>cf", vim.lsp.buf.format, desc = "Format" },
		})
		end,
	},
}
