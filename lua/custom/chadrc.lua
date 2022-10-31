local M = {}

M.options = {
   relativenumber = true,
   tabstop = 4, -- Number of spaces that a <Tab> in the file counts for
   -- NvChad options
   nvChad = {
      -- used for updater
      update_url = "https://github.com/imadjamil/NvChad",
      update_branch = "main",
   },
}

M.ui = {
   theme = "everforest",
   transparency = false,
}

-- TODO: delete when done switching to new style
-- NvChad included plugin options & overrides
-- M.plugins = {
--    status = {
--       clorizer = true,
--    },
--    options = {
--       lspconfig = {
--          setup_lspconf = "custom.plugins.lspconfig",
--       },
--       autopairs = {
--          ignored_next_char = "[%w%.$]", -- will ignore alphanumeric and `.` symbol
--       },
--    },
--    -- To change the Packer `config` of a plugin that comes with NvChad,
--    -- add a table entry below matching the plugin github name
--    --              '-' -> '_', remove any '.lua', '.nvim' extensions
--    -- this string will be called in a `require`
--    --              use "(custom.configs).my_func()" to call a function
--    --              use "custom.blankline" to call a file
--    -- default_plugin_config_replace = {},
--    user = require "custom.plugins",
-- }

M.plugins = require("custom.plugins")

M.mappings = require("custom.mappings")

return M
