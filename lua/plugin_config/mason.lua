return {
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup(){
        ensure_installed = { "clangd", "bashls", "cssls", "html", "texlab", "glsl_analyzer", "phpactor", "lua_ls"},
        automatic_installation = true,
      }

    end,
  },
}

