local M = {}

M.telescope = {
   n = {
      ["<A-f>"] = { "<cmd> Telescope find_files <CR>", "  find files" }
   },
}

M.nvterm = {
   t = {
      -- toggle in terminal mode
      ["<A-t>"] = {
         function()
            require("nvterm.terminal").toggle "horizontal"
         end,
         "   toggle horizontal term",
      },
   },

   n = {
      -- toggle in normal mode
      ["<A-t>"] = {
         function()
            require("nvterm.terminal").toggle "horizontal"
         end,
         "   toggle horizontal term",
      },
   },
}

return M
