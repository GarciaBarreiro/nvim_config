local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})	-- finds all files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})		    -- finds git files (Ctrl p)
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})    -- searchs strings using grep (requires ripgrep)
