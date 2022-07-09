-- This is where your custom modules and plugins go.
-- See the wiki for a guide on how to extend NvChad

local map = require("core.utils").map

-- map("n", "<leader>,h", ":noh <CR>", opt) -- example to delete the buffer

-- harpoon
-- map("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>")
-- map("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
-- map("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>")
-- map("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>")
-- map("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>")
-- map("n", "<leader>,,", ":lua require('harpoon.cmd-ui').toggle_quick_menu()<CR>")
-- map("n", "<leader>,1", ":lua require('harpoon.term').gotoTerminal(1)<CR>")
-- map("n", "<leader>,2", ":lua require('harpoon.term').gotoTerminal(2)<CR>")
-- map("n", "<leader>&", ":lua require('harpoon.term').sendCommand(1, 1)<CR>")
-- map("n", "<leader>é", ":lua require('harpoon.term').sendCommand(1, 2)<CR>")

-- trouble
map("n", "<leader>,t", "<cmd>TroubleToggle document_diagnostics<CR>")
map("n", "<leader>,q", "<cmd>TroubleToggle quickfix<CR>")
map("n", "<leader>,l", "<cmd>TroubleToggle loclist<CR>")

-- gitsigns
map("n", "<leader>gb", "<cmd>lua require('gitsigns').blame_line{full=true}<CR>")

require "custom.plugins"

-- personal plugins are in "lua/custom/plugins/"
-- local customPlugins = require("core.customPlugins")
--
-- customPlugins.add(function(use)
--    use {
--       "max397574/better-escape.nvim",
--       event = "InsertEnter",
--    }
--    use {
--       "user or orgname/reponame",
--       --further packer options
--    }
-- end)

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough
--

