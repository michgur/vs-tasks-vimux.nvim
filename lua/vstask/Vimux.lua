local Opts = require("vstask.Opts")

local function Vimux_process(command, direction, opts)
  -- TODO: handle size / direction
  -- local size = Opts.get_size(direction, opts)
  -- if size ~= nil then
  --   size = " size=" .. size
  -- else
  --   size = ''
  -- end
  -- local opt_direction = Opts.get_direction(direction, opts)
  -- if opt_direction == 'current' then
  --   opt_direction = ""
  -- else
  --   opt_direction = ' direction=' .. opt_direction
  -- end
  vim.cmd('VimuxRunCommand "' .. command .. '"')
  vim.cmd("VimuxZoomRunner")
end

return { Process = Vimux_process }
