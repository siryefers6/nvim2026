-- ============================================
-- TREESITTER - Resaltado de sintaxis avanzado
-- ============================================

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",          -- Auto-cierre de tags HTML
    "nvim-treesitter/nvim-treesitter-textobjects", -- Text objects adicionales
  },
  opts = {
      -- Habilitar resaltado
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      
      -- Habilitar indentación
      indent = {
        enable = true,
      },
      
      -- Auto-instalación de parsers
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "json",
        "yaml",
        "markdown",
        "markdown_inline",
        "bash",
        "gitignore",
        "regex",
      },
      
      -- Instalación automática de parsers
      auto_install = true,
      
      -- Incremental selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
      
      -- Auto-cierre de tags (HTML, JSX, etc.)
      autotag = {
        enable = true,
      },
      
      -- Context commentstring para mejor soporte de comentarios
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
      
      -- Text objects
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]f"] = "@function.outer",
            ["]c"] = "@class.outer",
          },
          goto_next_end = {
            ["]F"] = "@function.outer",
            ["]C"] = "@class.outer",
          },
          goto_previous_start = {
            ["[f"] = "@function.outer",
            ["[c"] = "@class.outer",
          },
          goto_previous_end = {
            ["[F"] = "@function.outer",
            ["[C"] = "@class.outer",
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>a"] = "@parameter.inner",
          },
          swap_previous = {
            ["<leader>A"] = "@parameter.inner",
          },
        },
      },
    })
  end,
  }
