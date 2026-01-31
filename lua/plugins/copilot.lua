-- ============================================
-- COPILOT - Asistente de código con IA
-- ============================================

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
        layout = {
          position = "bottom", -- top, bottom, left, right
          ratio = 0.4,
        },
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<M-l>",      -- Alt+l para aceptar
          accept_word = false,
          accept_line = false,
          next = "<M-]>",        -- Alt+] siguiente sugerencia
          prev = "<M-[>",        -- Alt+[ sugerencia anterior
          dismiss = "<C-]>",     -- Ctrl+] descartar
        },
      },
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
      copilot_node_command = "node", -- Path de Node.js
      server_opts_overrides = {},
    })
  end,
}
