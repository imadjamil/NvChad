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
      show_parameter_hints = true,
    },
    on_initialized = function()
      -- ih.set_all()
      vim.cmd [[ autocmd BufEnter,CursorHold,InsertLeave,BufWritePost *.rs silent! lua vim.lsp.codelens.refresh() ]]
    end,
  },
  server = {
    -- on_attach = function(_, bufnr)
    --   vim.keymap.set(
    --     "n",
    --     "<C-space>",
    --     rt.hover_actions.hover_actions,
    --     { buffer = bufnr }
    --   )
    --
    --   vim.keymap.set(
    --     "n",
    --     "<Leader>a",
    --     rt.code_action_group.code_action_group,
    --     { buffer = bufnr }
    --   )
    -- end,
    settings = {
      ["rust-analyzer"] = {
        lens = {
          enable = true,
        },
        checkOnSave = {
          command = "clippy",
        },
      },
    },

  },
  dap = {
    adapter = require("rust-tools.dap").get_codelldb_adapter(
      codelldb_path,
      liblldb_path
    )
  },
})
