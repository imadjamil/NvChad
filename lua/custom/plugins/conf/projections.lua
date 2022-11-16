local present, projections = pcall(require, "projections")

if not present then
  print("projections not found!")
  return
end


projections.setup({
  workspaces = {'~/perso'},
})
