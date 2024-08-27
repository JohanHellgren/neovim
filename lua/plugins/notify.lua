return {
	"rcarriga/nvim-notify",
	config = function()
		vim.notify = require("notify")
		vim.notify.setup({
			stages = "fade",
			timeout = 5000,
			icons = {
				ERROR = "",
				WARN = "",
				INFO = "",
				DEBUG = "",
				TRACE = "✎",
			},
		})
		local wk = require("which-key")
		wk.add({
			{ "<leader>h", "<cmd>Notifications<cr>", desc = "Notification history" },
		})
	end,
}
