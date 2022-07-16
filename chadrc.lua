-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.configs.lspconfig",
      },
   },

   user = require "custom.plugins"
}

M.mappings = require "custom.configs.mappings"

return M
