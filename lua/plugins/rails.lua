return {
  -- vim-rails plugin
  {
    "tpope/vim-rails",
    -- Specify any LazyVim-specific options you want here
    -- For example, if you want the plugin to load on Ruby filetypes, you can use:
    ft = { "ruby", "eruby" },
    -- If you want to specify commands or keybindings, you can add them as well.
  },

  -- Since bundler.vim and dispatch.vim are recommended, you can also include them
  -- {
  --   "tpope/vim-bundler",
  --   ft = { "ruby", "eruby" },
  -- },
  -- {
  --   "tpope/vim-dispatch",
  --   -- Add any specific options for dispatch.vim here
  -- },
}
