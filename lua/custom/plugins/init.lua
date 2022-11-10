local overrides = require "custom.plugins.overrides"

return {

  -- default plugins ---------------------------------

  ["folke/which-key.nvim"] = { disable = false },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.conf.lspconfig"
    end,
  },

  -- overrides
  ["lukas-reineke/indent-blankline.nvim"] = { override_options = overrides.blankline },
  ["nvim-treesitter/nvim-treesitter"] = { override_options = overrides.treesitter },
  ["kyazdani42/nvim-tree.lua"] = { override_options = overrides.nvimtree },

  -- custom plugins ---------------------------------

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.conf.null-ls"
    end,
  },

  -- this is used because null-ls prettier is not working for some reason
  ["rhysd/vim-fixjson"] = {},


  -- navigation
  ["ThePrimeagen/harpoon"] = {
    config = function()
      require "custom.plugins.conf.harpoon"
    end,
  },

  -- rust
  ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.conf.rust-tools"
    end,
  },

  -- debug
  ["mfussenegger/nvim-dap"] = {
    config = function()
      require "custom.plugins.conf.dap"
    end,
  },

  ["nvim-telescope/telescope-dap.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "dap"
    end,
  },

  ["theHamsta/nvim-dap-virtual-text"] = {
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },

  ["rcarriga/nvim-dap-ui"] = {
    requires = { "mfussenegger/nvim-dap" },
    after = "nvim-dap",
    config = function()
      require "custom.plugins.conf.nvim-dap-ui"
    end,
  },

  ["jbyuki/one-small-step-for-vimkind"] = {},
}

-- local customPlugins = require("core.customPlugins")
--
-- customPlugins.add(function(use)
--    use {
--       "deoplete-plugins/deoplete-clang",
--       event = "InsertEnter",
--    }
--
--    use {
--       "folke/trouble.nvim",
--       requires = "kyazdani42/nvim-web-devicons",
--       config = function()
--          require("trouble").setup {
--             -- your configuration comes here
--             -- or leave it empty to use the default settings
--             -- refer to the configuration section below
--          }
--       end,
--    }
--
--    -- refactoring and code manipulation
--    use {
--       "tpope/vim-commentary",
--    }
--
--    use {
--       "heavenshell/vim-pydocstring",
--       run = "make install",
--    }
--
--    -- note taking
--    -- use {
--    --    "oberblastmeister/neuron.nvim",
--    --    requires = {
--    --       "nvim-lua/popup.nvim",
--    --       "nvim-lua/plenary.nvim",
--    --       "nvim-telescope/telescope.nvim",
--    --    },
--    --    config = function()
--    --       require("custom.plugins.conf.neuron").setup()
--    --    end,
--    -- }
--
--    -- git
--    use {
--       "andrewradev/diffurcate.vim",
--    }
--
--    -- syntax highlighting
--    use {
--       "numirias/semshi", -- python
--    }
--
--    -- navigation
--    use {
--       "ThePrimeagen/harpoon",
--       requires = {
--          "nvim-lua/plenary.nvim",
--          "nvim-lua/popup.nvim",
--       },
--       config = function()
--          require("custom.plugins.conf.harpoon").setup()
--       end,
--    }
-- end)
