return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup()
    local wk = require("which-key")
    wk.add({
      { "<leader>t",  group = "Terminal" },
      { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm" }
    })
  end
}
