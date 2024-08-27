return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		local wk = require("which-key")
		wk.add({
			{ "<leader>u", group = "Debugging" },
			{ "<leader>ub", dap.toggle_breakpoint, desc = "Toggle breakpoint" },
			{ "<leader>ud", dap.step_over, desc = "Step over" },
			{ "<leader>ui", dap.step_into, desc = "Step into" },
			{ "<leader>uo", dap.step_out, desc = "Step out" },
			{ "<leader>ur", dap.repl.open, desc = "Open REPL" },
			{ "<leader>us", dap.start, desc = "Start debugging" },
			{ "<leader>uS", dap.stop, desc = "Stop debugging" },
			{ "<leader>uc", dap.continue, desc = "Continue" },
			{ "<leader>uz", dap.run_last, desc = "Run last" },
		})
	end,
}
