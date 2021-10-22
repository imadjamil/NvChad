local hooks = require "core.hooks"

hooks.add("install_plugins", function(use)
  use {
    "deoplete-plugins/deoplete-clang",
    event = "InsertEnter",
  }
  
  use {
   "jose-elias-alvarez/null-ls.nvim",
    after = "nvim-lspconfig",
    config = function()
       require("custom.plugins.conf.null-ls").setup()
    end,
  }

end)
