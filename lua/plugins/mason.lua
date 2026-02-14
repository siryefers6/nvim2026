-- ============================================
-- MASON - Gestor de LSP, DAP, linters y formatters
-- ============================================

return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")
    
    -- Configurar mason
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
        border = "rounded",
      },
    })
    
    -- Configurar mason-lspconfig
    mason_lspconfig.setup({
      -- Lista de servidores LSP a instalar automáticamente
      ensure_installed = {
        "lua_ls",        -- Lua
        "pyright",       -- Python
        "ts_ls",         -- TypeScript/JavaScript
        "html",          -- HTML
        "cssls",         -- CSS
        "tailwindcss",   -- Tailwind CSS
        "jsonls",        -- JSON
        "emmet_ls",      -- Emmet
      },
      automatic_installation = true,
    })
    
    -- Configurar mason-tool-installer
    mason_tool_installer.setup({
      ensure_installed = {
        -- Formatters
        "prettier",      -- Formatter para JS/TS/CSS/HTML/JSON
        "stylua",        -- Formatter para Lua
        "black",         -- Formatter para Python
        "isort",         -- Organizar imports de Python
        
        -- Linters
        "eslint_d",      -- Linter para JS/TS
        "pylint",        -- Linter para Python
      },
    })
  end,
}
