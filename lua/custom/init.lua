-- This is where your custom modules and plugins go.
-- See the wiki for a guide on how to extend NvChad

local hooks = require "core.hooks"

-- NOTE: To use this, make a copy with `cp example_init.lua init.lua`

--------------------------------------------------------------------

-- To modify packaged plugin configs, use the overrides functionality
-- if the override does not exist in the plugin config, make or request a PR,
-- or you can override the whole plugin config with 'chadrc' -> M.plugins.default_plugin_config_replace{}
-- this will run your config instead of the NvChad config for the given plugin

-- hooks.override("lsp", "publish_diagnostics", function(current)
--   current.virtual_text = false;
--   return current;
-- end)

-- To add new mappings, use the "setup_mappings" hook,
-- you can set one or many mappings
-- example below:

hooks.add("setup_mappings", function(map)
   map("n", "<leader>,h", ":noh <CR>", opt) -- example to delete the buffer

   -- harpoon
   map("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>")
   map("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
   map("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>")
   map("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>")
   map("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>")
   map("n", "<leader>,,", ":lua require('harpoon.cmd-ui').toggle_quick_menu()<CR>")
   map("n", "<leader>,1", ":lua require('harpoon.term').gotoTerminal(1)<CR>")
   map("n", "<leader>,2", ":lua require('harpoon.term').gotoTerminal(2)<CR>")
   map("n", "<leader>&", ":lua require('harpoon.term').sendCommand(1, 1)<CR>")
   map("n", "<leader>é", ":lua require('harpoon.term').sendCommand(1, 2)<CR>")

   -- trouble
   map("n", "<leader>,t", "<cmd>TroubleToggle lsp_document_diagnostics<CR>")
   map("n", "<leader>,q", "<cmd>TroubleToggle quickfix<CR>")
   map("n", "<leader>,l", "<cmd>TroubleToggle loclist<CR>")
end)

-- personal plugins are in "lua/custom/plugins/"
require "custom.plugins"
