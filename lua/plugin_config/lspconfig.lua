return {
    {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",  -- ensures language servers can update
    cmd = { "Mason" },       -- makes :Mason available
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    event = "VeryLazy",

    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "bashls", "cssls", "html", "texlab", "glsl_analyzer", "phpactor", "lua_ls"},
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").clangd.setup{}
      require("lspconfig").lua_ls.setup{}
      require("lspconfig").texlab.setup{}

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      require("lspconfig").html.setup{
        capabilities = capabilities,
      }
    end,

  },
}

