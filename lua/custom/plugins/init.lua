local hooks = require "core.hooks"

hooks.add("install_plugins", function(use)
  use {
    "deoplete-plugins/deoplete-clang",
    event = "InsertEnter",
  }
  
  -- formatting and diagnostics
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

  -- refactoring and code manipulation
  use {
    "tpope/vim-commentary",
  }

  use {
    "heavenshell/vim-pydocstring", 
    run="make install",
  }

  -- note taking
  use {
    "oberblastmeister/neuron.nvim",
    requires = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    }
  }

  -- git
  use {
    "andrewradev/diffurcate.vim",
  }

  -- syntax highlighting
  use {
    "numirias/semshi", -- python
  }

  -- navigation
  use {
    "ThePrimeagen/harpoon",
    requires= {
      "nvim-lua/plenary.nvim",
      "nvim-lua/popup.nvim",
    },
    config = function()
      require("custom.plugins.conf.harpoon").setup()
    end,
  }

end)
