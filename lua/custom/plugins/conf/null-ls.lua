local ok, null_ls = pcall(require, "null-ls")

if not ok then
  print "null-ls not found!"
  return
end

local b = null_ls.builtins

local sources = {

  -- JS html css stuff
  -- b.formatting.prettier,
  -- b.formatting.prettier.with {
  --   filetypes = { "html", "json", "markdown", "css" },
  -- },
  b.diagnostics.eslint.with {
    command = "eslint_d",
  },

  -- yaml linter
  -- b.diagnostics.yamllint,
  b.formatting.yamlfmt,
  -- b.diagnostics.ansiblelint,

  -- Lua (redundant with sumneko_lua, but the latter is not working)
  b.formatting.stylua,
  -- b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- c, cpp, cs, java
  b.formatting.clang_format,
  b.diagnostics.cppcheck, --- c, cpp

  -- python
  b.formatting.black,
  -- b.diagnostics.flake8.with { extra_args = { "--max-line-length", "99" } },
  --- b.diagnostics.pylint,

  -- English
  b.diagnostics.misspell.with { filetypes = { "markdown" } },
  -- b.diagnostics.codespell,
  -- b.diagnostics.write_good.with { extra_args = {"--no-passive"} },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
