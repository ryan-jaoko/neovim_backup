return {
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- This is where you can pass options to the theme
      require('monokai').setup {
        italics = false
      }
    end,
  },

  -- Configure LazyVim to use this theme as the default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai",
    },
  },
}

