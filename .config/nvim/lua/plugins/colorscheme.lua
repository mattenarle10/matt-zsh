return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true,  -- Enable transparency to match Ghostty
        styles = {
          comments = { "italic" },
          conditionals = {},
        },
        integrations = {
          telescope = true,
          neotree = true,
          treesitter = true,
          which_key = true,
          gitsigns = true,
        },
      })
      vim.cmd([[colorscheme catppuccin-mocha]])

      -- Extra transparency for backgrounds
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    end,
  },
}
