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
    ["<leader>l1"] = {
      function ()
        require("harpoon.ui").nav_file(1)
      end,
        " harpoon 1",
    },
    ["<leader>l2"] = {
      function ()
        require("harpoon.ui").nav_file(2)
      end,
        " harpoon 2",
    },
    ["<leader>l3"] = {
      function ()
        require("harpoon.ui").nav_file(3)
      end,
        " harpoon 3",
    },
    ["<leader>l4"] = {
      function ()
        require("harpoon.ui").nav_file(4)
      end,
        " harpoon 3",
    },
  }
}
return M
