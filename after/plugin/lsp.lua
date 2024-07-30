local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')

lspconfig.tsserver.setup({})
lspconfig.eslint.setup({})
lspconfig.lua_ls.setup({})

lsp.preset('recommended')

require('mason').setup()

-- Add the servers that you need. (Can be manually done with :Mason as well)
require('mason-lspconfig').setup({
	ensure_installed = {
		'tsserver',
		'eslint',
		'lua_ls',
	},
	handlers = {
		function (server_name)
			require('lspconfig')[server_name].setup({})
		end
	}
})

local cmp = require('cmp')

-- navigate between autocomplete options
cmp.setup({
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-y>'] = cmp.mapping.confirm({ select = true }),
		['<C-Space>'] = cmp.mapping.complete(),
		-- Mapping for <Tab> to navigate suggestions or insert whitespace
    -- tab is whitespace by default, but if there's an auto complete suggestion
    -- it will use the first option
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				-- If completion menu is visible, confirm the selected item
				cmp.confirm({ select = true })
			else
				-- If no completion menu, insert a tab character or whitespace
				fallback()
			end
		end, { 'i', 's' }), -- Apply this mapping in insert and select modes
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
		{ name = 'path' },
	},
})

-- no icons, delete this if you want them
lsp.set_preferences({
	sign_icons = { }
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
