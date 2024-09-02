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
      { "<leader>x",  group = "Debugging" },
      { "<leader>xb", dap.toggle_breakpoint, desc = "Toggle breakpoint" },
      { "<leader>xd", dap.step_over,         desc = "Step over" },
      { "<leader>xi", dap.step_into,         desc = "Step into" },
      { "<leader>xo", dap.step_out,          desc = "Step out" },
      { "<leader>xr", dap.repl.open,         desc = "Open REPL" },
      { "<leader>xs", dap.start,             desc = "Start debugging" },
      { "<leader>xS", dap.stop,              desc = "Stop debugging" },
      { "<leader>xc", dap.continue,          desc = "Continue" },
      { "<leader>xz", dap.run_last,          desc = "Run last" },
    })
  end,
}
