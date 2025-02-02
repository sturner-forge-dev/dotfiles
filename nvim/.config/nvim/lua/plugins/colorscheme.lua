return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = { light = "latte", dark = "mocha" },
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = false,
        no_italic = false,
        no_bold = false,
        styles = {
          comments = { "italic" },
          keywords = { "italic" },
          functions = { "italic" },
          variables = { "italic" },
          strings = {},
          numbers = {},
          types = {},
          properties = {},
          operators = {},
        },
        color_overrides = {},
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
