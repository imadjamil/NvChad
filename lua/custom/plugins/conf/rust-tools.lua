-----------------------
-- Rust
-----------------------
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local rt = require("rust-tools")

local extension_path = vim.env.HOME .. '/.local/share/nvim/mason/packages/codelldb/extension/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'

rt.setup({
  tools = {
    snippet_func = function(edits, bufnr, offset_encoding, old_func)
    old_func(edits, bufnr, offset_encoding);
      -- P(edits)
      -- require("luasnip.extras.lsp").apply_text_edits(
      --   edits,
      --   bufnr,
      --   offset_encoding,
      --   old_func
      -- )
    end,

    inlay_hints = {
      auto = true,
      only_current_line = true,
      -- whether to show parameter hints with the inlay hints or not
      -- default: true
      show_parameter_hints = false,
    },
    on_initialized = function()
      -- ih.set_all()
    end,
  },
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set(
        "n",
        "<C-space>",
        rt.hover_actions.hover_actions,
        { buffer = bufnr }
      )

      vim.keymap.set(
        "n",
        "<Leader>a",
        rt.code_action_group.code_action_group,
        { buffer = bufnr }
      )
    end,
  },
  dap = {
    adapter = require("rust-tools.dap").get_codelldb_adapter(
      codelldb_path,
      liblldb_path
    )
  },
})

local dap = require("dap")
dap.defaults.fallback.terminal_win_cmd = "50vsplit new"

-- to manually launch the adapter in a terminal with the specified port
-- dap.adapters.codelldb ={
--   type = "server",
--   host = "127.0.0.1",
--   port = "13123"
--   name = "codelldb",
-- }

-- auto
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = extension_path .. '/adapter/codelldb',
    args = {"--port", "${port}"},
    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}


