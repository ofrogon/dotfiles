return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato"
    },
  },
  {
    "catppuccin",
    opts = {
      transparent_background = true,
      function()
        local bufferline = require("catppuccin.groups.integrations.bufferline")
        bufferline.get = bufferline.get or bufferline.get_theme
      end,
    },
    optional = true,dd
  },
}
