require("neo-tree").setup({
  filesystem = {
    follow_current_file = { enabled = true },
    hijack_netrw_behavior = "open_default",
    use_libuv_file_watcher = true, -- This might help with performance
  },
  window = {
    position = "right",
    -- mappings = {
    --   ["<space>"] = "none", -- Example mapping to disable space as a shortcut
    -- },
  },
  buffers = {
    follow_current_file = { enabled = true },
  },
  -- event_handlers = {
  --   {
  --     event = "file_opened",
  --     handler = function()
  --       -- Close Neo-Tree when a file is opened
  --       require("neo-tree").close_all()
  --     end,
  --   },
  -- },
})
