return {
     "sainnhe/gruvbox-material",
     priority = 1000, -- Priorité élevée pour charger le thème en premier
     config = function()
       -- Configuration des options globales pour gruvbox-material
       vim.g.gruvbox_material_background = "hard" -- Contraste maximal
       vim.g.gruvbox_material_transparent_background = 2 -- Transparence complète (1 pour partielle, 2 pour complète)
       vim.g.gruvbox_material_enable_italic = 1 -- Activer les italiques pour certains éléments
       vim.g.gruvbox_material_disable_italic_comment = 0 -- Garder les commentaires en italique
       vim.g.gruvbox_material_enable_bold = 1 -- Activer le texte en gras
       vim.g.gruvbox_material_better_performance = 1 -- Optimiser les performances
       vim.g.gruvbox_material_foreground = "material" -- Palette material (par défaut)
       vim.g.gruvbox_material_ui_contrast = "high" -- Contraste élevé pour l'interface utilisateur
       vim.g.gruvbox_material_diagnostic_text_highlight = 1 -- Surlignage du texte pour les diagnostics
       vim.g.gruvbox_material_diagnostic_line_highlight = 1 -- Surlignage des lignes pour les diagnostics
       vim.g.gruvbox_material_diagnostic_virtual_text = "colored" -- Texte virtuel coloré pour les diagnostics

       -- Personnalisation supplémentaire des groupes de surlignage
       vim.api.nvim_create_autocmd("ColorScheme", {
         group = vim.api.nvim_create_augroup("custom_highlights_gruvboxmaterial", {}),
         pattern = "gruvbox-material",
         callback = function()
           local palette = vim.fn["gruvbox_material#get_palette"](
             vim.g.gruvbox_material_background,
             vim.g.gruvbox_material_foreground,
             {}
           )
           local set_hl = vim.fn["gruvbox_material#highlight"]

           -- Rendre certains éléments transparents
           set_hl("Normal", palette.fg0, "none")
           set_hl("NormalNC", palette.fg0, "none")
           set_hl("SignColumn", palette.none, "none")
           set_hl("VertSplit", palette.none, "none")
           set_hl("StatusLine", palette.grey2, "none")
           set_hl("StatusLineNC", palette.grey1, "none")

           -- Ajuster les couleurs pour maximiser le contraste
           set_hl("Search", palette.none, palette.bg_visual_yellow)
           set_hl("IncSearch", palette.none, palette.bg_visual_red)
         end,
       })

       -- Appliquer le thème
       vim.cmd([[colorscheme gruvbox-material]])
     end,
   }
