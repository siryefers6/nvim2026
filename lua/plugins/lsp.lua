-- ============================================
-- LSP - Language Server Protocol (Neovim 0.11+)
-- ============================================

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "LspInfo", "LspLog", "LspStart", "LspStop", "LspRestart" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local util = require("lspconfig.util")
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
    
    -- Lua
    lspconfig.lua_ls.setup({
      cmd = { "lua-language-server" },
      filetypes = { "lua" },
      root_dir = util.root_pattern(".luarc.json", ".luarc.jsonc", "selene.toml", "stylua.toml", ".git"),
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
    lspconfig.pyright.setup({
      cmd = { "pyright-langserver", "--stdio" },
      filetypes = { "python" },
      root_dir = util.root_pattern("pyrightconfig.json", "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git"),
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- TypeScript/JavaScript
    lspconfig.tsserver.setup({
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      root_dir = util.root_pattern("tsconfig.json", "jsconfig.json", "package.json", ".git"),
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- HTML
    lspconfig.html.setup({
      cmd = { "html-languageserver", "--stdio" },
      filetypes = { "html" },
      root_dir = util.root_pattern(".htmlhintrc", "package.json", ".git"),
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- CSS
    lspconfig.cssls.setup({
      cmd = { "css-languageserver", "--stdio" },
      filetypes = { "css", "scss", "less" },
      root_dir = util.root_pattern("package.json", ".git"),
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- JSON
    lspconfig.jsonls.setup({
      cmd = { "vscode-json-languageserver", "--stdio" },
      filetypes = { "json", "jsonc" },
      root_dir = util.root_pattern("package.json", ".git"),
      capabilities = capabilities,
      on_attach = on_attach,
    })
    
    -- Tailwind CSS
    lspconfig.tailwindcss.setup({
      cmd = { "tailwindcss-language-server", "--stdio" },
      filetypes = { "html", "css", "javascript", "typescript", "jsx", "tsx" },
      root_dir = util.root_pattern("tailwind.config.js", "tailwind.config.ts", "tailwind.config.cjs", "tailwind.config.mjs", ".git"),
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- Emmet
    lspconfig.emmet_ls.setup({
      cmd = { "emmet-ls", "--stdio" },
      filetypes = { "html", "css", "scss", "less", "javascriptreact", "typescriptreact", "svelte", "vue" },
      root_dir = util.root_pattern("package.json", ".git"),
      capabilities = capabilities,
      on_attach = on_attach,
    })
  end,
}
