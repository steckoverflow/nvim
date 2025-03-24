return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      -- configure the DAP adapter/configuration
      local dap = require "dap"
      dap.adapters.godot = {
        type = "server",
        host = "127.0.0.1",
        port = 6006,
      }
      dap.configurations.gdscript = {
        {
          type = "godot",
          request = "launch",
          name = "Launch scene",
          project = "${workspaceFolder}",
          launch_scene = true,
        },
      }
    end,
  },
  {
    "AstroNvim/astrolsp",
    opts = {
      -- tell AstroLSP to set up the `gdscript` language server since not installed with Mason
      servers = { "gdscript" },
    },
  },
}
