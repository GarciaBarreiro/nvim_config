local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'lua_ls',
	'rust_analyzer',
    'tailwindcss',
    'html',
})

require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { 'lua_ls', 'tsserver', 'eslint', 'rust_analyzer', 'tailwindcss', 'html' }
})

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
})

lsp.configure('tailwindcss', {})

lsp.configure('tsserver', {
    settings = {
        completions = {
            completeFunctionCalls = true
        }
    }
})

--local nvim_lsp = require("lspconfig")
--nvim_lsp.tailwindcss.setup{}

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
    ['<C-z>'] = cmp.mapping.abort(),
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

--require("mason").setup()
--local mlsp = require('mason-lspconfig')
--mlsp.setup{
--    ensure_installed = { 'tsserver', 'eslint', 'lua_ls', 'rust_analyzer', 'tailwindcss', 'html' },
--}
--mlsp.setup_handlers {
--    function (server)
--        require('lspconfig')[server].setup()
--    end
--}
