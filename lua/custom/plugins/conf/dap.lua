local present, dap = pcall(require,"dap")

if not present then
  print("dap not present!")
  return
end

local extension_path = vim.env.HOME .. '/.local/share/nvim/mason/packages/codelldb/extension/'

dap.defaults.fallback.terminal_win_cmd = "50vsplit new"

-- adapters
--
-- to manually launch the adapter in a terminal with the specified port
-- dap.adapters.codelldb ={
--   type = "server",
--   host = "127.0.0.1",
--   port = "13123"
--   name = "codelldb",
-- }

-- auto
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = extension_path .. '/adapter/codelldb',
    args = {"--port", "${port}"},
    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.adapters.nlua = function(callback, config)
  callback({
    type = "server",
    host = config.host or "127.0.0.1",
    port = config.port or 8086,
  })
end

--- configurations
local nlua = {
  type = "nlua",
  request = "attach",
  name = "Attach to running Neovim instance",
  host = function()
    local value = vim.fn.input("Host [127.0.0.1]: ")
    if value ~= "" then
      return value
    end
    return "127.0.0.1"
  end,
  port = function()
    local val = tonumber(vim.fn.input("Port: "))
    assert(val, "Please provide a port number")
    return val
  end,
}

require("dap").configurations = {
  python = {
    {
      type = 'python',
      request = 'launch',
      name = "Launch file",
      program = "${file}",
      pythonPath = function()
        return '/usr/bin/python'
      end,
    },
  },
  rust = {
    {
      type = "codelldb",
      request = "launch",
      -- program = "${file}",
      program = function()
        return vim.fn.input('Path to executable:', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = true,
    },
  },
  lua = {
    nlua,
  },
}
