return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "suketa/nvim-dap-ruby",
      config = function()
        require("dap-ruby").setup()
      end,
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      config = function() end,
    },
  },
  { "theHamsta/nvim-dap-virtual-text" },
  { "leoluz/nvim-dap-go" },
}

-- local dap = require("dap")
--
-- -- Ruby configuration
-- dap.adapters.ruby = {
--   type = "executable",
--   command = "/Users/stephenschuz/.rbenv/shims/ruby",
--   args = { "-r", "readapt", "serve" },
-- }
--
-- dap.configurations.ruby = {
--   {
--     type = "ruby",
--     request = "attach",
--     name = "Attach to Docker",
--     remoteHost = "127.0.0.1",
--     remotePort = 1234, -- The port you exposed in Docker
--     remoteWorkspaceRoot = "/app",
--     localWorkspaceRoot = "${workspaceFolder}",
--   },
-- }
--
-- return {}
-- -- /Users/stephenschuz/.rbenv/shims/neovim-ruby-host
