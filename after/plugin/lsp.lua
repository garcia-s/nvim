local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup({
"tsserver",
"eslint",
"rust_analyzer",
"dart_analyzer",
"sumneko_lua"
})

