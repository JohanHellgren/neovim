return {
	"kid-icarus/jira.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	opts = {}, -- see configuration section
	keys = {
		{ "<leader>j>", desc = "Jira" },
		{ "<leader>jv", "<cmd>Jira issue view<cr>", desc = "View Jira issue" },
		{ "<leader>jt", "<cmd>Jira issue create<cr>", desc = "Create Jira Issue" },
	},
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>j>", desc = "Jira" },
			{ "<leader>jv", "<cmd>Jira issue view<cr>", desc = "View Jira issue" },
			{ "<leader>jt", "<cmd>Jira issue create<cr>", desc = "Create Jira Issue" },
		})
	end,
}
