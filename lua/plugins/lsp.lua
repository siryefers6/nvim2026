-- ============================================
-- LSP - Language Server Protocol (Neovim 0.11+)
-- ============================================

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    
    local opts = { noremap = true, silent = true }
    local on_attach = function(client, bufnr)
      opts.buffer = bufnr
      
      -- Keymaps LSP
      opts.desc = "Show LSP references"
      vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
      
      opts.desc = "Go to declaration"
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      
      opts.desc = "Show LSP definitions"
      vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
      
      opts.desc = "Show LSP implementations"
      vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
      
      opts.desc = "Show LSP type definitions"
      vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
      
      opts.desc = "See available code actions"
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
      
      opts.desc = "Smart rename"
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      
      opts.desc = "Show buffer diagnostics"
      vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
      
      opts.desc = "Show line diagnostics"
      vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
      
      opts.desc = "Go to previous diagnostic"
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
      
      opts.desc = "Go to next diagnostic"
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
      
      opts.desc = "Show documentation for what is under cursor"
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      
      opts.desc = "Restart LSP"
      vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
    end
    
    -- Capacidades mejoradas con cmp
    local capabilities = cmp_nvim_lsp.default_capabilities()
    
    -- Configuración de diagnósticos (Neovim 0.11+)
    vim.diagnostic.config({
      virtual_text = {
        prefix = "●",
      },
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.HINT] = "󰠠 ",
          [vim.diagnostic.severity.INFO] = " ",
        },
      },
      update_in_insert = false,
      underline = true,
      severity_sort = true,
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })
    
    -- Usar la nueva API de Neovim 0.11+: vim.lsp.config()
    -- Lua
    vim.lsp.config("lua_ls", {
      cmd = { "lua-language-server" },
      filetypes = { "lua" },
      root_markers = { ".luarc.json", ".luarc.jsonc", "selene.toml", "stylua.toml" },
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
    
    -- Python
    vim.lsp.config("pyright", {
      cmd = { "pyright-langserver", "--stdio" },
      filetypes = { "python" },
      root_markers = { "pyrightconfig.json", "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt" },
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- TypeScript/JavaScript
    vim.lsp.config("ts_ls", {
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      root_markers = { "tsconfig.json", "jsconfig.json", "package.json" },
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- HTML
    vim.lsp.config("html", {
      cmd = { "html-languageserver", "--stdio" },
      filetypes = { "html" },
      root_markers = { ".htmlhintrc", "package.json" },
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- CSS
    vim.lsp.config("cssls", {
      cmd = { "css-languageserver", "--stdio" },
      filetypes = { "css", "scss", "less" },
      root_markers = { "package.json", ".git" },
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- JSON
    vim.lsp.config("jsonls", {
      cmd = { "vscode-json-languageserver", "--stdio" },
      filetypes = { "json", "jsonc" },
      root_markers = { "package.json", ".git" },
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- Tailwind CSS
    vim.lsp.config("tailwindcss", {
      cmd = { "tailwindcss-language-server", "--stdio" },
      filetypes = { "html", "css", "javascript", "typescript", "jsx", "tsx" },
      root_markers = { "tailwind.config.js", "tailwind.config.ts", "tailwind.config.cjs", "tailwind.config.mjs" },
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- Habilitar servidores cuando se abren los archivos correspondientes
    vim.lsp.enable({ "lua_ls", "pyright", "ts_ls", "html", "cssls", "jsonls", "tailwindcss" })
  end,
}
