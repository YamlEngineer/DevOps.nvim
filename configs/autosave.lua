local M = {}

M.autosave = function()
   local present, autosave = pcall(require, "autosave")

   if present then
      autosave.setup()
   end
end

return M
