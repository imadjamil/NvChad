return {
	{
		"deoplete-plugins/deoplete-clang",
		event = "InsertEnter",
	},

	-- formatting and diagnostics
	{
		"jose-elias-alvarez/null-ls.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.conf.null-ls").setup()
		end,
	},

	{
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end,
	},

	-- refactoring and code manipulation
	{
		"tpope/vim-commentary",
	},

	{
		"heavenshell/vim-pydocstring",
		run = "make install",
	},

	-- note taking
	-- use {
	--    "oberblastmeister/neuron.nvim",
	--    requires = {
	--       "nvim-lua/popup.nvim",
	--       "nvim-lua/plenary.nvim",
	--       "nvim-telescope/telescope.nvim",
	--    },
	--    config = function()
	--       require("custom.plugins.conf.neuron").setup()
	--    end,
	-- }

	-- git
	{
		"andrewradev/diffurcate.vim",
	},

	-- syntax highlighting
	{
		"numirias/semshi", -- python
	},

	-- navigation
	{
		"ThePrimeagen/harpoon",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
		},
		config = function()
			require("custom.plugins.conf.harpoon").setup()
		end,
	}
}
