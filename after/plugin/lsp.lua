local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	-- 'tsserver',
	-- 'eslint',
	'sumneko_lua',
	'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.confirm({ select = true })
        else
            fallback()
        end
    end, { 'i' }),
    ['<CR>'] = cmp.mapping(function(fallback)
        fallback()
    end, { 'i' }),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.setup()

vim.diagnostic.config({
	virtual_text = true
})
