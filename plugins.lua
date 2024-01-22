local plugins = {
   -- format & linting
  {
    "jose-elias-alvarez/null-ls.nvim",
    after = "nvim-lspconfig",
    config = function()
       require "custom.configs.null-ls"
    end,
  },

  {
    "Pocco81/AutoSave.nvim",
    module = "autosave",
    lazy = false,
    config = function()
      require("custom.configs.autosave").autosave()
    end,
   },

  {"hashivim/vim-terraform"},

  {
    "goolord/alpha-nvim",
    disable = false,
  },

  {
    "segeljakt/vim-silicon",
    config = function ()
      vim.cmd [[
        let g:silicon = {
          \   'theme':               'OneHalfDark',
          \   'font': 'Fira Code,Fira Code Medium',
          \   'background':              '#282c34',
          \   'shadow-color':            '#282c34',
          \   'line-pad':                        2,
          \   'pad-horiz':                       0,
          \   'pad-vert':                        0,
          \   'shadow-blur-radius':              0,
          \   'shadow-offset-x':                 0,
          \   'shadow-offset-y':                 0,
          \   'line-number':                v:true,
          \   'round-corner':               v:true,
          \   'window-controls':           v:false,
          \ }
          let g:silicon['output'] = '/tmp/silicon-{time:%Y-%m-%d-%H%M%S}.png'
         ]]
      end,
   },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {"watzon/vim-edge-template"},

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "emmet-ls",
        "json-lsp",
        "prettier",
        "eslint-lsp",

        -- shell
        "bash-language-server",
        "shfmt",
        "shellcheck",

        -- python
        "pyright",
        "black",

        -- terraform
        "terraform-ls",

        -- ansible
        "ansible-language-server",
        -- docker
        "dockerfile-language-server"
      },
    },
  },
}

return plugins
