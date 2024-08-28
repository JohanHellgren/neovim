return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		opts = {
			debug = true, -- Enable debugging
			-- See Configuration section for rest
		},
		config = function()
			require("CopilotChat").setup()
			local wk = require("which-key")
			wk.add({
				{ "<leader>a", group = "AI" },
				{ "<leader>ac", "<cmd>CopilotChatToggle<cr>", desc = "Copilot chat", mode = "n" },
				{ "<leader>ae", "<cmd>CopilotChatExplain<cr>", desc = "Copilot explain" },
				{ "<leader>af", "<cmd>CopilotChatFix<cr>", desc = "Copilot fix" },
				{ "<leader>at", "<cmd>CopilotChatTests<cr>", desc = "Generate tests" },
				{ "<leader>ad", "<cmd>CopilotChatDocs<cr>", desc = "Generate docs" },
				{ "<leader>aD", "<cmd>CopilotChatFixDiagnostic<cr>", desc = "Fix diagnostic" },
			})
		end,
		-- See Commands section for default commands if you want to lazy load on them
	},
}
