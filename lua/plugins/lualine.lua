
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local palette = {
      bg0 = { "#1d2021" },
      fg1 = { "#ebdbb2" },
      grey2 = { "#a89984" },
      bg_statusline1 = { "#282828" },
      bg_statusline3 = { "#3c3836" },
      bg_green = { "#98971a" },
      bg_red = { "#cc241d" },
      orange_dark = { "#d65d0e" },
      blue = { "#458588" },
      purple = { "#b16286" },
    }

    local gruvbox_material_custom = {
        normal = {
        a = { bg = palette.orange_dark[1], fg = palette.bg0[1], gui = 'bold' },
        b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
        c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] }
      },
      insert = {
        a = { bg = palette.bg_red[1], fg = palette.bg0[1], gui = 'bold' }, -- ROUGE
        b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
        c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] }
      },
      visual = {
        a = { bg = palette.purple[1], fg = palette.bg0[1], gui = 'bold' },
        b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
        c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] }
      },
      replace = {
        a = { bg = palette.bg_green[1], fg = palette.bg0[1], gui = 'bold' },
        b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
        c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] }
      },
      command = {
        a = { bg = palette.blue[1], fg = palette.bg0[1], gui = 'bold' },
        b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
        c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] }
      },
      terminal = {
        a = { bg = palette.purple[1], fg = palette.bg0[1], gui = 'bold' },
        b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
        c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] }
      },
      inactive = {
        a = { bg = palette.bg_statusline1[1], fg = palette.grey2[1] },
        b = { bg = palette.bg_statusline1[1], fg = palette.grey2[1] },
        c = { bg = palette.bg_statusline1[1], fg = palette.grey2[1] }
      }
    }

    require('lualine').setup({
      options = {
        icons_enabled = true,
        theme = gruvbox_material_custom,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    })
  end,
}
