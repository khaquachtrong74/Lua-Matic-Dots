
return {
  -- LSP support
  { "neovim/nvim-lspconfig",
  },
  { "williamboman/mason.nvim", build = ":MasonUpdate", config = function() require("mason").setup() end },
  { "williamboman/mason-lspconfig.nvim"},
}

