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
