-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',	-- typescript (don't work)
	'eslint',	-- javascript (don't work)
	'sumneko_lua',	-- lua
	'rust_analyzer',-- rust
	-- TODO: c, css, html?
})

lsp.set_preferences({
    -- no sign icons
    sign_icons = { }
})
