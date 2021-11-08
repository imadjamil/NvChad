-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the structure of `core/default_config.lua`,
-- examples of setting relative number & changing theme:

vim.g.pydocstring_doq_path = "/home/imad/.virtualenvs/itron_pts/bin/doq"

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
   theme = "gruvchad",
}

-- NvChad included plugin options & overrides
M.plugins = {
  status = {
    clorizer = true,
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
    autopairs = {
      ignored_next_char = "[%w%.]" -- will ignore alphanumeric and `.` symbol
    },
  },
  -- To change the Packer `config` of a plugin that comes with NvChad,
  -- add a table entry below matching the plugin github name
  --              '-' -> '_', remove any '.lua', '.nvim' extensions
  -- this string will be called in a `require`
  --              use "(custom.configs).my_func()" to call a function
  --              use "custom.blankline" to call a file
  default_plugin_config_replace = {},
}

return M
