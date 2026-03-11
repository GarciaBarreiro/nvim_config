require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site',
}

require'nvim-treesitter'.install{
  'vim', 'vimdoc', 'c', 'lua', 'rust'
}

-- vim.api.nvim_create_autocmd('User', { pattern = 'TSUpdate',
-- callback = function()
--   require('nvim-treesitter.parsers').lua.install_info.generate = true
-- end})

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'vim', 'vimdoc', 'c', 'lua', 'rust' },
    callback = function()
        -- syntax highlighting, provided by Neovim
        vim.treesitter.start()
        -- folds, provided by Neovim (I don't like folds)
        -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo.foldmethod = 'expr'
        -- indentation, provided by nvim-treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
