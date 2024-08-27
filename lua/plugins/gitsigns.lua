return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
      local gs = require("gitsigns")
      local wk = require("which-key")
      wk.add({
        {"<leader>gb", gs.toggle_current_line_blame, desc = "Toggle line blame"},
        {"<leader>gh", gs.preview_hunk, desc = "Preview hunk"},
        {"<leader>gd", gs.diffthis, desc = "Diff this"},
        {"<leader>gD", gs.toggle_deleted, "Show deleted"},
      })
		end,
	},
}
