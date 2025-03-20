return{
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },

    config = function()

      local wk = require("which-key")
      wk.add({
        { "<leader>f", group = "file" },
        {"<leader>y", "<cmd>NvimTreeToggle<cr>", desc = "File Explorer"},
      })


      local function my_on_attach(bufnr)
        local api = require "nvim-tree.api"

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        --vim.keymap.set('n', '<C-h>', api.tree.change_root_to_parent,        opts('Down'))
        --vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
      end

      require("nvim-tree").setup{
        on_attach = my_on_attach,
      }

    end,
  },
}
