local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.clangd.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  root_dir=lspconfig.util.root_pattern(".git")
})

lspconfig.tsserver.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  root_dir=lspconfig.util.root_pattern(".git")
})
