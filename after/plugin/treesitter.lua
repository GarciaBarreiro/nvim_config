require'nvim-treesitter.configs'.setup {
	ensure_installed = { 'vimdoc', 'javascript', 'typescript', 'c', 'lua', 'rust', 'css', 'html' },

	sync_intall = false,

	auto_install = true,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
}
