-- require('lspconfig').pyright.setup {}

-- Initialize mason
require("mason").setup()
require("mason-lspconfig").setup()

-- LSP setup for Python (using pyright as an example)
local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}  -- Python LSP with type-checking


local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint,     -- Linter for JavaScript/TypeScript
        null_ls.builtins.diagnostics.flake8,     -- Linter for Python
        null_ls.builtins.diagnostics.shellcheck, -- Linter for Shell scripts
    },
})
-- additional configurations for Django, if needed
-- add more specific LSP servers for other things or frameworks as needed
