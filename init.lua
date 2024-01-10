-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Put explorer to the right
require("neo-tree").setup({
  filesystem = {
    follow_current_file = { enabled = true },
  },
  window = {
    position = "right",
  },
})

-- Setup LSP
local lspconfig = require("lspconfig")
local configs = require("lspconfig/configs")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "svelte",
    "pug",
    "typescriptreact",
    "vue",
  },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  },
})

-- Add ERB tags
vim.cmd([[
" Normal mode mappings to insert ERB tags and place the cursor in the middle
autocmd FileType eruby,html.erb nnoremap <buffer> <Leader>e= i<%=  %><Esc>F%hi
autocmd FileType eruby,html.erb nnoremap <buffer> <Leader>e- i<%  %><Esc>F%hi
autocmd FileType eruby,html.erb nnoremap <buffer> <Leader>e# i<%#  %><Esc>F%hi
]])

-- Setup Togglebale terminal
require("toggleterm").setup({
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 30
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
})
-- Key mapping to split the existing terminal horizontally
vim.api.nvim_set_keymap("n", "<th>", "<cmd>2ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "t",
  "<C-t>",
  "<C-\\><C-n><cmd>2ToggleTerm direction=horizontal<CR>",
  { noremap = true, silent = true }
)

-- Setup css color highlight
require("nvim-highlight-colors").setup({})
