local cmp = require('cmp')
local lspConfig = require('lspconfig')
local cmpLsp = require('cmp_nvim_lsp')

local capabilities = cmpLsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
local flags = { debounce_text_changes = 150 }
local defaultProps = {
  capabilities = capabilities, 
  flags = flags, 
  handlers = handlersl,
}

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-k>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-j>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close(), }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'path' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  })
})


local handlers = {
  ["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = false,
      underline = true,
      update_in_insert = false,
    }
  ),
}



lspConfig.dartls.setup(defaultProps)
lspConfig.jsonls.setup(defaultProps)
lspConfig.rust_analyzer.setup(defaultProps)
lspConfig.pyright.setup(defaultProps)
lspConfig.sqlls.setup(defaultProps)
lspConfig.gopls.setup(defaultProps)
