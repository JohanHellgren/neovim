return {
	"nvim-pack/nvim-spectre",
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>s", group = "Search" },
			{ "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true', desc = "Search current word" },
			{ "<leader>sf", '<esc><cmd>lua require("spectre").open_visual()<CR>', desc = "Search current word" },
		})
	end,
}
