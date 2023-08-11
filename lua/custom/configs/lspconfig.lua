local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.clangd.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  root_dir=lspconfig.util.root_pattern("compile_commands.json")
})

lspconfig.tsserver.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  root_dir=lspconfig.util.root_pattern(".git")
})

lspconfig.gopls.setup{
  on_attach=on_attach,
  capabilities=capabilities,
  root_dir=lspconfig.util.root_pattern("main.go")
}

lspconfig.protolint.setup {
  on_attach=on_attach,
  capabilities=capabilities,
  root_dir=lspconfig.util.root_pattern(".git")
}

lspconfig.yamlls.setup {
  on_attach=on_attach,
  capabilities=capabilities,
  root_dir=lspconfig.util.root_pattern(".git")
}
