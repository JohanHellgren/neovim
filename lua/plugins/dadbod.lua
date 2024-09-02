return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		{ "tpope/vim-dadbod", lazy = true },
		{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
	},
	cmd = {
		"DBUI",
		"DBUIToggle",
		"DBUIAddConnection",
		"DBUIFindBuffer",
	},
	init = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>D", group = "Database" },
			{ "<leader>Dc", "<cmd>DBUIAddConnection<cr>", desc = "Add connection" },
			{ "<leader>Dt", "<cmd>DBUIToggle<cr>", desc = "Toggle DBUI" },
			{ "<leader>Df", "<cmd>DBUIFindBuffer<cr>", desc = "Find buffer" },
		})
		vim.g.db_ui_use_nerd_fonts = 1
	end,
	config = function() end,
}
