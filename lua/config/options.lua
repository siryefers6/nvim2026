-- ============================================
-- OPCIONES GENERALES DE NEOVIM
-- ============================================

local opt = vim.opt

-- Apariencia
opt.number = true                    -- Números de línea
opt.relativenumber = true            -- Números relativos
opt.termguicolors = true             -- Colores verdaderos
opt.signcolumn = "yes"               -- Siempre mostrar signcolumn
opt.cursorline = true                -- Resaltar línea actual
opt.wrap = false                     -- No wrap de líneas
opt.scrolloff = 8                    -- Líneas de contexto
opt.sidescrolloff = 8                -- Columnas de contexto

-- Tabulación e indentación
opt.tabstop = 2                      -- 2 espacios por tab
opt.shiftwidth = 2                   -- 2 espacios para indentación
opt.expandtab = true                 -- Convertir tabs a espacios
opt.autoindent = true                -- Auto indentación
opt.smartindent = true               -- Indentación inteligente

-- Búsqueda
opt.ignorecase = true                -- Ignorar mayúsculas en búsqueda
opt.smartcase = true                 -- No ignorar si hay mayúsculas
opt.hlsearch = true                  -- Resaltar búsquedas
opt.incsearch = true                 -- Búsqueda incremental

-- Comportamiento
opt.mouse = ""                       -- Deshabilitar mouse
opt.clipboard = "unnamedplus"        -- Usar clipboard del sistema
opt.completeopt = "menu,menuone,noselect"  -- Opciones de autocompletado
opt.splitbelow = true                -- Split horizontal hacia abajo
opt.splitright = true                -- Split vertical a la derecha
opt.undofile = true                  -- Habilitar undo persistente
opt.swapfile = false                 -- No crear archivos swap
opt.backup = false                   -- No crear backups
opt.updatetime = 300                 -- Tiempo de actualización más rápido
opt.timeoutlen = 400                 -- Tiempo de espera para combinaciones

-- Rendimiento
opt.lazyredraw = false               -- No lazy redraw (para mejor experiencia)
opt.hidden = true                    -- Permitir buffers ocultos

-- Codificación
opt.encoding = "utf-8"               -- Codificación UTF-8
opt.fileencoding = "utf-8"           -- Codificación de archivos

-- Otros
opt.showmode = false                 -- No mostrar modo (lualine lo hace)
opt.showtabline = 2                  -- Siempre mostrar tabline
opt.pumheight = 10                   -- Altura del menú popup
opt.conceallevel = 0                 -- Mostrar `` en archivos markdown
