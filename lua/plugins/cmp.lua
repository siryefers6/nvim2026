-- ============================================
-- CMP - Autocompletado inteligente
-- ============================================

return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",           -- Fuente: buffer
    "hrsh7th/cmp-path",             -- Fuente: rutas de archivos
    "hrsh7th/cmp-nvim-lsp",         -- Fuente: LSP
    "hrsh7th/cmp-nvim-lua",         -- Fuente: API de Neovim
    "saadparwaiz1/cmp_luasnip",     -- Fuente: snippets
    "L3MON4D3/LuaSnip",             -- Motor de snippets
    "rafamadriz/friendly-snippets", -- Colección de snippets
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    
    -- Cargar snippets de friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- Item anterior
        ["<C-j>"] = cmp.mapping.select_next_item(), -- Item siguiente
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),    -- Scroll docs arriba
        ["<C-f>"] = cmp.mapping.scroll_docs(4),     -- Scroll docs abajo
        ["<C-Space>"] = cmp.mapping.complete(),     -- Mostrar completado
        ["<C-e>"] = cmp.mapping.abort(),            -- Cerrar
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Confirmar
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },    -- LSP
        { name = "nvim_lua" },    -- Neovim Lua API
        { name = "luasnip" },     -- Snippets
        { name = "buffer" },      -- Texto del buffer
        { name = "path" },        -- Rutas de archivos
      }),
      formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          -- Iconos para tipos
          local kind_icons = {
            Text = "󰉿",
            Method = "󰆧",
            Function = "󰊕",
            Constructor = "",
            Field = "󰜢",
            Variable = "󰀫",
            Class = "󰠱",
            Interface = "",
            Module = "",
            Property = "󰜢",
            Unit = "󰑭",
            Value = "󰎠",
            Enum = "",
            Keyword = "󰌋",
            Snippet = "",
            Color = "󰏘",
            File = "󰈙",
            Reference = "󰈇",
            Folder = "󰉋",
            EnumMember = "",
            Constant = "󰏿",
            Struct = "󰙅",
            Event = "",
            Operator = "󰆕",
            TypeParameter = "",
          }
          vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
          vim_item.menu = ({
            nvim_lsp = "[LSP]",
            nvim_lua = "[Lua]",
            luasnip = "[Snippet]",
            buffer = "[Buffer]",
            path = "[Path]",
          })[entry.source.name]
          return vim_item
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      experimental = {
        ghost_text = true, -- Mostrar preview del texto
      },
    })
  end,
}
