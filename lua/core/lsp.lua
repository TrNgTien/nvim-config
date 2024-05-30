local cmp = require("cmp")
local cmpLsp = require("cmp_nvim_lsp")
local lspConfig = require("lspconfig")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = {
		["<C-k>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		["<C-j>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-y>"] = cmp.config.disable,
		["<C-e>"] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close() }),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "path" },
		{ name = "vsnip" },
	}, {
		{ name = "buffer" },
	}),
})

local capabilities = cmpLsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
local flags = { debounce_text_changes = 150 }

local handlers = {
	["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = false,
		underline = true,
		update_in_insert = false,
	}),
}


local defaultProps = {
	capabilities = capabilities,
	flags = flags,
	handlers = handlersl,
}

lspConfig.tsserver.setup({
	root_dir = require("lspconfig.util").root_pattern(".git"),
})

-- lspConfig.graphql.setup{}
lspConfig.eslint.setup({})

lspConfig.tailwindcss.setup({})

-- lspConfig.dartls.setup(defaultProps)
-- lspConfig.pyright.setup(defaultProps)

lspConfig.gopls.setup({
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			gofumpt = true,
		},
	},
})
