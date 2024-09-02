return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    local wk = require("which-key")
    wk.add({
      { "<leader>d",  group = "Debugging" },
      { "<leader>db", dap.toggle_breakpoint, desc = "Toggle breakpoint" },
      { "<leader>dd", dap.step_over,         desc = "Step over" },
      { "<leader>di", dap.step_into,         desc = "Step into" },
      { "<leader>do", dap.step_out,          desc = "Step out" },
      { "<leader>dr", dap.repl.open,         desc = "Open REPL" },
      { "<leader>ds", dap.start,             desc = "Start debugging" },
      { "<leader>dS", dap.stop,              desc = "Stop debugging" },
      { "<leader>dc", dap.continue,          desc = "Continue" },
      { "<leader>dz", dap.run_last,          desc = "Run last" },
    })
  end,
}
