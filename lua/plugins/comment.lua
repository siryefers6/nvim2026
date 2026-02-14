-- ============================================
-- COMMENT.NVIM - Comentarios segun el lenguaje
-- ============================================

return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local comment = require("Comment")

    comment.setup({
      mappings = {
        basic = true,
        extra = false,
      },
    })

    local keymap = vim.keymap.set
    local opts = { noremap = true, silent = true, desc = "Toggle comment" }

    -- Normal: comenta la linea actual
    keymap("n", "<leader>/", function()
      require("Comment.api").toggle.linewise.current()
    end, opts)

    -- Visual: comenta el bloque seleccionado
    keymap("v", "<leader>/", function()
      local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
      vim.api.nvim_feedkeys(esc, "nx", false)
      require("Comment.api").toggle.linewise(vim.fn.visualmode())
    end, opts)
  end,
}
