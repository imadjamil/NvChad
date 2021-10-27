local ok, harpoon = pcall(require, "harpoon")

if not ok then
   return
end

-- local ui = harpoon.ui
-- local mark = harpoo.mark

local global_settings = {
  save_on_toggle = false,
  save_on_change = true,
  enter_on_sendcmd = true,
}


-- local projects = {
--   -- Yes $HOME works
--   ["$HOME/perso/"] = {
--     term = {
--       cmds = {
--         "./env && npx ts-node src/index.ts"
--       }
--     }
--   }

local M = {}

M.setup = function(on_attach)
  harpoon.setup({
    global_settings = global_settings,
    nav_first_in_list = true,
    projects = {
      ["/home/imad/LRM/build/"] = {
        term = {
          cmds = {
            "tree"
          }
        }
      }
    }
  })
end

return M
