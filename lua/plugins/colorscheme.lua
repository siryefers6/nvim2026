-- ============================================
-- COLORSCHEME - Tema de colores
-- ============================================

return {
  -- Catppuccin - Tema moderno y popular
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = false,
        term_colors = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          telescope = true,
          treesitter = true,
          mason = true,
          which_key = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
          },
        },
      })
      
      -- Aplicar el tema
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Tema local estilo VBA (archivo colors/vba.lua)
  -- Para usarlo, cambia la linea de arriba a:
  -- vim.cmd.colorscheme("vba")
  
  -- Alternativas (comentadas, descomenta para usar):
  -- {
  --   "folke/tokyonight.nvim",
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("tokyonight-night")
  --   end,
  -- },
  
  -- {
  --   "navarasu/onedark.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("onedark").setup({ style = "dark" })
  --     require("onedark").load()
  --   end,
  -- },
}
