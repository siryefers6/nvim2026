-- ============================================
-- TELESCOPE - Fuzzy finder potente
-- ============================================

return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    
    telescope.setup({
      defaults = {
        path_display = { "truncate" },
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        multi_icon = " ",
        
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- Mover arriba
            ["<C-j>"] = actions.move_selection_next,     -- Mover abajo
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- Enviar a quickfix
            ["<C-x>"] = actions.delete_buffer,           -- Eliminar buffer
          },
        },
        
        file_ignore_patterns = {
          "node_modules",
          ".git/",
          "dist/",
          "build/",
          "%.lock",
          "%.venv/",
          "venv/",
          "env/",
          "__pycache__/",
          "%.mypy_cache/",
          "%.pytest_cache/",
          "%.ruff_cache/",
          "%.ipynb_checkpoints/",
          "(^|/)%.",
        },
        
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        
        sorting_strategy = "ascending",
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        set_env = { ["COLORTERM"] = "truecolor" },
      },
      
      pickers = {
        find_files = {
          theme = "dropdown",
          previewer = false,
          hidden = false,
        },
        live_grep = {
          theme = "dropdown",
        },
        buffers = {
          theme = "dropdown",
          previewer = false,
          initial_mode = "normal",
          mappings = {
            i = {
              ["<C-d>"] = actions.delete_buffer,
            },
            n = {
              ["dd"] = actions.delete_buffer,
            },
          },
        },
      },
      
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })
    
    -- Cargar extensiones
    telescope.load_extension("fzf")
    
    -- Keymaps de Telescope
    local keymap = vim.keymap.set
    local opts = { noremap = true, silent = true }
    
    -- Buscar archivos
    keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
    keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
    keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts)
    keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts)
    
    -- Buffers y tabs
    keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
    
    -- Git
    keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts)
    keymap("n", "<leader>gC", "<cmd>Telescope git_bcommits<cr>", opts)
    keymap("n", "<leader>gf", "<cmd>Telescope git_status<cr>", opts)
    
    -- Utilidades
    keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
    keymap("n", "<leader>fm", "<cmd>Telescope marks<cr>", opts)
    keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", opts)
    keymap("n", "<leader>fC", "<cmd>Telescope commands<cr>", opts)
  end,
}
