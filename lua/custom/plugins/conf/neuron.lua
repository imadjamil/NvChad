local ok, neuron = pcall(require, "neuron")

if not ok then
   return
end

local M = {}

M.setup = function(on_attach)
   neuron.setup {
      virtual_titles = true,
      mappings = true,
      run = nil, -- function to run when in neuron dir
      neuron_dir = "~/neuron/public_notes", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
      leader = "gz", -- the leader key to for all mappings, remember with 'go zettel'
   }
end

return M
