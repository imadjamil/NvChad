local M = {}

M.nvterm = {}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "",
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "typescript",
    "json",
    "toml",
    "markdown",
    "bash",
    "lua",
    "c",
    "rust",
    "python",
  },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}

M.sumneko_lua = {}

M.mason = {
  ensure_installed = { "stylua", "bash-language-server" },
}

M.nvimtree = {
  filters = {
    dotfiles = true,
    custom = { "node_modules" },
  },

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.which_key = {
  disable = false,
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "^:", "^ " },
}

return M
