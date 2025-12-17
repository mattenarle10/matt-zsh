-- Other useful plugins
return {
  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- Comment toggle
  {
    "numToStr/Comment.nvim",
    config = true,
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          transparent = true,
        },
        sections = {
          lualine_a = {},  -- Clear left sections
          lualine_b = {},
          lualine_c = {
            {
              "filename",
              path = 1,  -- Show relative path - now truly centered!
            },
          },
          lualine_x = {},  -- Clear right sections
          lualine_y = {},
          lualine_z = {},
        },
      })
    end,
  },

  -- Which-key (shows keybindings)
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup()
    end,
  },

  -- Git signs in gutter
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },
}
