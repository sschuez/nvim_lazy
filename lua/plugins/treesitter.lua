return {
  { "nvim-treesitter/playground" },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "RRethy/nvim-treesitter-endwise" },
    opts = function(_, opts)
      opts.endwise = { enable = true }
      -- opts.indent = { enable = true, disable = { "yaml", "ruby" } }
      opts.ensure_installed = {
        "bash",
        "embedded_template",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "ruby",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "css",
        "scss",
        "go",
      }
    end,
    highlight = {
      enable = true,
      disable = function(_, buf)
        local max_filesize = 10000 * 1024 -- 10 MB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          vim.notify("Tree sitter disabled")
          return true
        end
      end,
    },
  },
}
