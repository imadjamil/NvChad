--folding 
vim.wo.foldmethod = 'indent'
vim.g.foldopen = 'all' -- open folds with any interactions
-- vim.g.foldclose = 'all' -- use zx to reset
vim.wo.foldenable = false -- by default all folds are open, use zi to invert

-- rulers
-- vim.opt.colorcolumn = '80'
vim.api.nvim_set_option_value("colorcolumn", "80", {})

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 10
vim.opt.updatetime = 50

-- increase this when more lines are needed to display messages 
vim.opt.cmdheight = 1

vim.g.fixjson_indent_size = 1

-- -- some color changes
-- vim.api.nvim_set_hl(0, "cursorlinenr", {bg = "None"})
-- vim.api.nvim_set_hl(0, "linenr", {fg = "#5eacd3"})
-- -- something in overriding after restart, 
-- -- so created mappings to show/hide as needed
-- vim.api.nvim_set_hl(
--   0,
--   "cursorline",
--   {bg = "#2c3c4c", blend = 50, ctermbg = darked, cterm = NONE}
-- )
