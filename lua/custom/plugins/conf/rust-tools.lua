local present, rust_tools = pcall(require, "rust-tools")

if not present then
  return
end

rust_tools.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<Leader>srh", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>sra", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
