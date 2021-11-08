local ok, null_ls = pcall(require, "null-ls")

if not ok then
   return
end

local b = null_ls.builtins

local sources = {

   -- JS html css stuff
   b.formatting.prettierd.with {
      filetypes = { "html", "json", "markdown", "css", "javascript", "javascriptreact", "yaml" },
   },
   b.diagnostics.eslint.with {
      command = "eslint_d",
   },

   -- yaml
   b.diagnostics.yamllint,

   -- Lua
   b.formatting.stylua,
   b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

   -- c, cpp, cs, java
   b.formatting.clang_format,
   b.formatting.cppcheck, --- c, cpp

   -- python
   b.formatting.black,
   b.diagnostics.flake8.with { extra_args = { "--max-line-length 100" } },
   --- b.diagnostics.pylint,
}

local M = {}

M.setup = function(on_attach)
   null_ls.config {
      sources = sources,
   }
   require("lspconfig")["null-ls"].setup { on_attach = on_attach, cmd = { "vim" } }
end

return M
