local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local present, lspconfig = pcall(require, "lspconfig")

if not present then
  print("lspconfig not found!")
  return
end

-- lspservers with default config
local servers = { "html", "cssls", "pyright", "rust_analyzer", "bashls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
  }
end

-- TODO: need to find a solution
-- local overrides = require("core.hooks").createOverrides "lsp"
-- local lsp_publish_diagnostics_options = overrides.get("publish_diagnostics", {
--    virtual_text = false,
--    signs = true,
--    underline = true,
--    update_in_insert = false, -- update diagnostics insert mode
-- })
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--    vim.lsp.diagnostic.on_publish_diagnostics,
--    lsp_publish_diagnostics_options
-- )
