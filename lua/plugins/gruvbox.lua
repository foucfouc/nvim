
-- lua/plugins/gruvbox.lua
return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- charge le thème en priorité
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- inverse les highlights pour search/diff/etc
        contrast = "", -- "hard", "soft" ou vide
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })

      -- Appliquer le thème
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
