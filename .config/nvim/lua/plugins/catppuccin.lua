-- Catppuccin theme (alternative to tokyonight, warmer colors)
return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true,
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
  end,
}
