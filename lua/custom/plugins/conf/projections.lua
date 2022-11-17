local present, projections = pcall(require, "projections")

if not present then
  print "projections not found!"
  return
end

-- preparing the workspaces
--
local ws_list = {}
for path in io.popen("find ~/perso/src/github.com -maxdepth 1 -type d"):lines() do
  table.insert(ws_list, {path, {'.git'}})
end
-- print(vim.inspect(ws_list))

projections.setup ({
  workspaces = ws_list,
})


-- debugging
--
-- local workspace = require("projections.workspace")
-- -- workspace.add('~/perso/src/github.com/imadjamil')
-- print("from config:\n" .. vim.inspect(workspace.get_workspaces_from_config()))
