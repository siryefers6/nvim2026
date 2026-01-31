-- ============================================
-- LUALINE - Barra de estado elegante
-- ============================================

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    
    -- Colores personalizados
    local colors = {
      bg = "#202328",
      fg = "#bbc2cf",
      yellow = "#ECBE7B",
      cyan = "#008080",
      darkblue = "#081633",
      green = "#98be65",
      orange = "#FF8800",
      violet = "#a9a1e1",
      magenta = "#c678dd",
      blue = "#51afef",
      red = "#ec5f67",
    }
    
    local conditions = {
      buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
      end,
      hide_in_width = function()
        return vim.fn.winwidth(0) > 80
      end,
      check_git_workspace = function()
        local filepath = vim.fn.expand("%:p:h")
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
      end,
    }
    
    -- Configuración
    local config = {
      options = {
        component_separators = "",
        section_separators = "",
        theme = "auto", -- auto, catppuccin, tokyonight, onedark
        globalstatus = true,
        disabled_filetypes = { statusline = { "alpha" } },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "filename",
            path = 1, -- 0 = solo nombre, 1 = ruta relativa, 2 = ruta absoluta
            symbols = {
              modified = " ●",
              readonly = " ",
              unnamed = "[Sin nombre]",
            },
          },
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = " ", warn = " ", info = " ", hint = " " },
          },
        },
        lualine_x = {
          {
            "diff",
            symbols = { added = " ", modified = " ", removed = " " },
            cond = conditions.hide_in_width,
          },
          "encoding",
          {
            "fileformat",
            icons_enabled = true,
            symbols = {
              unix = "LF",
              dos = "CRLF",
              mac = "CR",
            },
          },
          "filetype",
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { "nvim-tree", "toggleterm", "quickfix" },
    }
    
    lualine.setup(config)
  end,
}
