require("custom.options")
-- vim.cmd(":Telescope find_files")


-- LSP Diagnostics Options Setup 
-- local sign = function(opts)
--   vim.fn.sign_define(opts.name, {
--     texthl = opts.name,
--     text = opts.text,
--     numhl = ''
--   })
-- end
--
-- sign({name = 'DiagnosticSignError', text = ''})
-- sign({name = 'DiagnosticSignWarn', text = ''})
-- sign({name = 'DiagnosticSignHint', text = ''})
-- sign({name = 'DiagnosticSignInfo', text = ''})
--
-- vim.diagnostic.config({
--     virtual_text = false,
--     signs = true,
--     update_in_insert = true,
--     underline = true,
--     severity_sort = false,
--     float = {
--         border = 'rounded',
--         source = 'always',
--         header = '',
--         prefix = '',
--     },
-- })
--
-- vim.cmd([[
-- set signcolumn=yes
-- autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
-- ]])
--

-- vim.g.pydocstring_doq_path = "/home/imad/.virtualenvs/itron_pts/bin/doq"

-- TODO: switch to new config style
-- local map = require("core.utils").map
--
-- -- trouble
-- map("n", "<leader>,t", "<cmd>TroubleToggle document_diagnostics<CR>")
-- map("n", "<leader>,q", "<cmd>TroubleToggle quickfix<CR>")
-- map("n", "<leader>,l", "<cmd>TroubleToggle loclist<CR>")
