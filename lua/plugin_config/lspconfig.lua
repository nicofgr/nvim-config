return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "bashls", "cssls", "html", "texlab", "glsl_analyzer", "phpactor", "lua_ls"},
        automatic_instalattion = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").clangd.setup{}
      require("lspconfig").lua_ls.setup{}
      require("lspconfig").texlab.setup{}
    end,
  },
}

