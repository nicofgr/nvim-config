local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'tpope/vim-sleuth',
  {'navarasu/onedark.nvim',
  init = function()
    vim.cmd.colorscheme 'onedark'
  end,
},

    require 'plugin_config/lualine',  -- Line at bottom of screen
    require 'plugin_config/telescope',
    require 'plugin_config/treesitter',  -- PL Parser
    require 'plugin_config/which-key',
    --require 'plugin_config/mason',
    require 'plugin_config/lspconfig',  -- With Mason
    require 'plugin_config/LuaSnip',
    require 'plugin_config/cmp',  -- Autocomplete
    require 'plugin_config/vimtex',
    require 'plugin_config/nvim-tree',
})
