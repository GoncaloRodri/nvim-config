--require('lsp-zero')

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

--require('lspconfig').tsserver.setup({})
--require('lspconfig').rust_analyzer.setup({})

-- lsp-zero will also setup autocompletion
require('lspconfig').lua_ls.setup({})

-- tutorial: https://lsp-zero.netlify.app/v3.x/tutorial.html

require('lspconfig').jdtls.setup({})
