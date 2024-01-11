-- Put explorer to the right
require("neo-tree").setup({
  filesystem = {
    follow_current_file = { enabled = true },
  },
  window = {
    position = "right",
  },
})
