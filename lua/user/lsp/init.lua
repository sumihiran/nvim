local nvim_lsp = require('lspconfig')

require "user.lsp.lsp-signature"

local handlers = require("user.lsp.handlers")
local servers = {
    'rust_analyzer', 
    'intelephense', 
    'csharp_ls' , 
    'dockerls', 
    'psalm'
}

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {
        capabilities = handlers.capabilities,
		on_attach = handlers.on_attach
	}
end
