return
{
  {

    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      local wk = require("which-key")
      wk.add({
        { "<leader>f",  group = "Telescope" },
        { "<leader>fg", builtin.live_grep,  desc = "Grep files" },
        { "<leader>ff", builtin.find_files, desc = "Find files" },
        { "<leader>fb", builtin.buffers,    desc = "List buffers" },
        { "<leader>fh", builtin.help_tags,  desc = "Find help tags" },
      })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  },
}
