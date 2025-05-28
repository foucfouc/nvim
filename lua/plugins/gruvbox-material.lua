
return {
  "sainnhe/gruvbox-material",
  priority = 1000, -- Priorité élevée pour charger le thème en premier
  config = function()
    -- Configuration des options globales pour gruvbox-material
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_disable_italic_comment = 0
    vim.g.gruvbox_material_enable_bold = 1
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_foreground = "material"
    vim.g.gruvbox_material_ui_contrast = "high"
    vim.g.gruvbox_material_diagnostic_text_highlight = 1
    vim.g.gruvbox_material_diagnostic_line_highlight = 1
    vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
    vim.g.gruvbox_material_visual = "blue background"
    -- Appliquer le thème
    vim.cmd([[colorscheme gruvbox-material]])
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#fabd2f", bold = true })
  end,
}
