local M = {}

M.test = {
  n = {
    ["<leader>,h"] = {":noh <CR>", "No highlight", opts = {}}
  }
}

M.harpoon = {
  n = {
    ["<leader>la"] = {
      function ()
        require("harpoon.mark").add_file()
      end,
        " harpoon add",
    },
    ["<leader>ll"] = {
      function ()
        require("harpoon.ui").toggle_quick_menu()
      end,
        " harpoon list",
    },
    ["<leader>1"] = {
      function ()
        require("harpoon.ui").nav_file(1)
      end,
        " harpoon 1",
    },
    ["<leader>2"] = {
      function ()
        require("harpoon.ui").nav_file(2)
      end,
        " harpoon 2",
    },
    ["<leader>3"] = {
      function ()
        require("harpoon.ui").nav_file(3)
      end,
        " harpoon 3",
    },
    ["<leader>4"] = {
      function ()
        require("harpoon.ui").nav_file(4)
      end,
        " harpoon 3",
    },
  }
}

M.gitsigns = {
  n = {
    ["<leader>gbb"] = {
      function ()
        require("gitsigns").blame_line{full=true}
      end,
        " blame line",
    },
    ["<leader>gbt"] = {
      function ()
        require("gitsigns").toggle_current_line_blame()
      end,
        " toggle blame line",
    },
    ["<leader>gbd"] = {
      function ()
        require("gitsigns").diffthis()
      end,
        " diff index",
    },
    ["<leader>gbD"] = {
      function ()
        require("gitsigns").diffthis('~')
      end,
        " diff last commit",
    },
    ["<leader>gbq"] = {
      function ()
        require("gitsigns").setqflist()
      end,
        " quickfix with hunks",
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>srb"] = {
      function()
        require("nvterm.terminal").send("cargo build\r", "horizontal")
        -- require("nvterm.terminal").toggle("horizontal")
      end,
      "rust: cargo build",
    },
    ["<leader>srr"] = {
      function()
        require("nvterm.terminal").send("cargo run\r", "horizontal")
        -- require("nvterm.terminal").toggle("horizontal")
      end,
      "rust: cargo run",
    },
  },
}

M.dap = {
  n = {
    ["<leader>da"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "dap break point",
    },
    ["<leader>dt"] = {
      function()
        require("dap").terminate()
      end,
      "dap terminate",
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "dap continue",
    },
    ["<leader>di"] = {
      function()
        require("dap").step_into()
      end,
      "dap step into",
    },
    ["<leader>do"] = {
      function()
        require("dap").step_over()
      end,
      "dap step over",
    },
    ["<leader>dh"] = {
      function()
        require("dap.ui.widgets").hover()
      end,
      "dap hover",
    },
    ["<leader>dr"] = {
      ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l',
      "dap repl",
    },
    ["<leader>dk"] = {
      ':lua require"dap".up()<CR>zz',
      "dap up",
    },
    ["<leader>dj"] = {
      ':lua require"dap".down()<CR>zz',
      "dap down",
    },
    ["<leader>dn"] = {
      function()
        require("dap").run_to_cursor()
      end,
      "dap run to cursor",
    },
    ["<leader>ds"] = {
      ":Telescope dap frames<CR>",
      "dap frames telescope"
    },
    ["<leader>db"] = {
      ":Telescope dap list_breakpoints<CR>",
      "dap breakpoints telescope"
    },
    ["<leader>dlc"] = {
      function()
        require("osv").run_this()
      end,
      'dap lua debug osv'
    },
    ["<leader>dll"] = {
      function()
        require("osv").launch({port=8086})
      end,
      'dap lua launch osv'
    },
    ["<leader>dut"] = {
      function ()
        require("dapui").toggle()
      end,
      "dap toggle ui"
    },
    ["<leader>duc"] = {
      function ()
        require("dapui").toggle()
      end,
      "dap close ui"
    },
  },




}

M.navigations = {
  n = {
    ["<leader>fp"] = {
    function ()
      local fp = require("telescope").extensions.projections.projections
      local session = require("projections.session")
      fp({
        action = function(selection)
          -- chdir is required since there might not be a session file
          vim.fn.chdir(selection.value)
          session.restore(selection.value)
        end,
      })
    end,
    "Find projection"
    },
    ["<leader>fg"] = {
      function ()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      "Live grep with args"
    }
  }
}

M.colors = {
  n = {
    ["<leader>,cs"] = {
      function ()
        vim.api.nvim_set_hl(
          0,
          "cursorline",
          {bg = "#2c3c4c", blend = 50, ctermbg = darked, cterm = NONE}
        )
      end,
      "show cursorline"
    },
    ["<leader>,ch"] = {
      ":set cursorline!<CR>",
      "hide cursorline"
    },

  }
}

return M
