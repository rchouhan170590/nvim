-- Setup nvim-cmp.
local cmp = require('cmp')
local lspconfig = require('lspconfig')

cmp.setup({
  snippet = {
    -- REQUIRED - you'll need a snippet engine like LuaSnip
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item.
    ['<Tab>'] = cmp.mapping.select_next_item(), -- Use Tab to navigate completions
    ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Shift-Tab to navigate back
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },   -- LSP completions
    { name = 'luasnip' },    -- Snippet completions
  }, {
    { name = 'buffer' },     -- Buffer completions
    { name = 'path' },       -- Path completions
  })
})

-- Setup lspconfig capabilities for nvim-cmp.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup Python LSP (Pyright) with the proper capabilities
lspconfig.pyright.setup{
  capabilities = capabilities
}

-- Optional: Add additional LSP server setup here if needed.
