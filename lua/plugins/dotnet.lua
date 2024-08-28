return {
	"MoaidHathot/dotnet.nvim",
	cmd = "DotnetUI",
	opts = {},
	config = function()
		require("dotnet").setup()
		local wk = require("which-key")
		wk.add({
			{ "<leader>ö", group = "Dotnet" },
			{ "<leader>öi", "<cmd>DotnetUI new_item<cr>", desc = "New item" },
			{ "<leader>öb", "<cmd>DotnetUI file bootstrap<cr>", desc = "Bootstrap new file" },
			{ "<leader>ön", "<cmd>DotnetUI project package add<cr>", desc = "Add Nuget package" },
			{ "<leader>önr", "<cmd>DotnetUI project package remove<cr>", desc = "Remove Nuget Package" },
			{ "<leader>ör", "<cmd>DotnetUI project reference add<cr>", desc = "Add project reference" },
			{ "<leader>örr", "<cmd>DotnetUI project reference remove<cr>", desc = "Remove project reference" },
		})
	end,
}
