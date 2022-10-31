ocal ok, terminal = pcall(require, "nvterm.terminal")

if not ok then
   return
end

local ft_cmds = {
  python = "python3 " .. vim.fn.expand('%'),
  ...
  python --version
}
local toggle_modes = {'n', 't'}
local mappings = {
  { 'n', '<C-l>', function () require("nvterm.terminal").send(ft_cmds[vim.bo.filetype], "float") end },
}
local opts = { noremap = true, silent = true }
for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping[1], mapping[2], mapping[3], opts)
end
