-- ============================================
-- EASYMOTION - Navegación rápida con flash.nvim
-- ============================================

return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    labels = "asdfghjklqwertyuiopzxcvbnm",
    search = {
      multi_window = true,
      forward = true,
      wrap = true,
      mode = "exact", -- exact, search, fuzzy
    },
    jump = {
      jumplist = true,
      pos = "start", -- start, end, range
      history = false,
      register = false,
      nohlsearch = false,
      autojump = false,
    },
    label = {
      uppercase = true,
      rainbow = {
        enabled = true,
        shade = 5,
      },
    },
    modes = {
      search = {
        enabled = true,
      },
      char = {
        enabled = true,
        jump_labels = true,
        multi_line = true,
        highlight = { backdrop = true },
      },
    },
  },
  keys = {
    -- <leader><leader>s + 2 caracteres (modo search)
    {
      "<leader><leader>s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump({
          search = {
            mode = function(str)
              return "\\<" .. str
            end,
          },
        })
      end,
      desc = "Flash Search (2 chars)",
    },
    -- Búsqueda normal con flash
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    -- Flash treesitter
    {
      "S",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    -- Remote Flash
    {
      "r",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    -- Treesitter Search
    {
      "R",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Treesitter Search",
    },
    -- Toggle Flash Search en /
    {
      "<c-s>",
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search",
    },
  },
}
