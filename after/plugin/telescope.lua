local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})	-- finds all files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})		-- finds git files (Ctrl p)
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end) 								-- searchs strings using grep (doesn't work??)
