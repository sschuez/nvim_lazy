-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Add ERB tags
vim.cmd([[
  " Normal mode mappings to insert ERB tags and place the cursor in the middle
  autocmd FileType eruby,html.erb nnoremap <buffer> <Leader>e= i<%=  %><Esc>F%hi
  autocmd FileType eruby,html.erb nnoremap <buffer> <Leader>e- i<%  %><Esc>F%hi
  autocmd FileType eruby,html.erb nnoremap <buffer> <Leader>e# i<%#  %><Esc>F%hi
]])
