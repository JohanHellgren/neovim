return {
	"stevearc/aerial.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("aerial").setup({
			-- optionally use on_attach to set keymaps when aerial has attached to a buffer
			on_attach = function(bufnr)
				local wk = require("which-key")
        wk.add({
          {"<leader>o", group = "Outline" },
          {"<leader>oo", "<cmd>AerialToggle<cr>", desc = "Outline" },
          {"<leader>ok", "<cmd>AerialPrev<cr>", desc = "Jump to previous symbol"},
          {"<leader>oj", "<cmd>AerialNext<cr>", desc = "Jump to next symbol"},
          {"<leader>on", "<cmd>AerialNavOpen<cr>", desc = "Open nav"},
          {"<leader>oN", "<cmd>AerialNavClose<cr>", desc = "Close nav"},
        })
				-- Jump forwards/backwards with '{' and '}'
--				vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
--				vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
			end,
		})
		-- You probably also want to set a keymap to toggle aerial
--		vim.keymap.set("n", "<leader>o", "<cmd>AerialToggle!<CR>")
	end,
}
