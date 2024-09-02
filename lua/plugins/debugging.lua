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
      { "<leader>b",  group = "Debugging" },
      { "<leader>bb", dap.toggle_breakpoint, desc = "Toggle breakpoint" },
      { "<leader>bd", dap.step_over,         desc = "Step over" },
      { "<leader>bi", dap.step_into,         desc = "Step into" },
      { "<leader>bo", dap.step_out,          desc = "Step out" },
      { "<leader>br", dap.repl.open,         desc = "Open REPL" },
      { "<leader>bs", dap.start,             desc = "Start debugging" },
      { "<leader>bS", dap.stop,              desc = "Stop debugging" },
      { "<leader>bc", dap.continue,          desc = "Continue" },
      { "<leader>bz", dap.run_last,          desc = "Run last" },
    })
  end,
}
