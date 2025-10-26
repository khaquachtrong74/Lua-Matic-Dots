return{
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                automatic_enable = {
                    "lua_ls",
                    "vimls"
                },
                ensure_installed = {
                    "gopls", -- for golang
                    "pyright", -- for python
                    --    "ts_ls", --type-script: for nodejs
                }
                })
            local lspconfig = require("lspconfig")
              lspconfig.clangd.setup({
              });
              lspconfig.pyright.setup({})
              lspconfig.cmake.setup({})
          --    #              lspconfig.ts_ls.setup({})
              lspconfig.gopls.setup({})
            --  #lspconfig.pyright.setup({})
        end
    },
      -- Completion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" }

}
