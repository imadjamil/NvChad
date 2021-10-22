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

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
    end,
  }

  use {
    "numirias/semshi",
  }

end)
