require('frd.remap')
require('frd.set')

vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg='#333333'})
vim.api.nvim_set_hl(0, 'TelescopeSelection', {bg='#333333', fg='#FFFFFF'})
vim.api.nvim_set_hl(0, 'Pmenu', {bg='#333333'})
vim.api.nvim_set_hl(0, 'PmenuSel', {bg='#333333', fg='#FFFFFF'})
vim.api.nvim_set_hl(0, 'Visual', {bg='#333333'})

-- LSP config
vim.lsp.config('*', {
  root_markers = { '.git' },
})

-- vim.lsp.config('c_ls', {
--     cmd = { 'clangd' },
--     filetypes = { 'c' }
-- })

vim.lsp.enable('clangd')
