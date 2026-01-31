-- ============================================
-- KEYMAPS GENERALES (Leader = Space)
-- ============================================

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ========== GENERAL ==========
-- Guardar archivo
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)

-- Salir
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>Q", ":qa!<CR>", opts)

-- Limpiar búsqueda
keymap("n", "<Esc>", ":noh<CR>", opts)

-- ========== NAVEGACIÓN ==========
-- Navegación entre ventanas con leader
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Redimensionar ventanas
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navegación entre buffers
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)
keymap("n", "<leader>x", ":bdelete<CR>", opts)

-- ========== EDICIÓN ==========
-- Indentar en modo visual
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Mover líneas arriba/abajo
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Mejor pegado (no pierde el registro)
keymap("v", "p", '"_dP', opts)

-- Seleccionar todo
keymap("n", "<C-a>", "ggVG", opts)

-- ========== SPLITS ==========
keymap("n", "<leader>sv", ":vsplit<CR>", opts)
keymap("n", "<leader>sh", ":split<CR>", opts)
keymap("n", "<leader>se", "<C-w>=", opts)
keymap("n", "<leader>sx", ":close<CR>", opts)

-- ========== TABS ==========
keymap("n", "<leader>tn", ":tabnew<CR>", opts)
keymap("n", "<leader>tx", ":tabclose<CR>", opts)
keymap("n", "<leader>tl", ":tabnext<CR>", opts)
keymap("n", "<leader>th", ":tabprevious<CR>", opts)

-- ========== TERMINAL ==========
-- Ver configuración en toggleterm.lua

-- ========== TELESCOPE ==========
-- Ver configuración en plugins/telescope.lua

-- ========== LSP ==========
-- Ver configuración en plugins/lsp.lua

-- ========== EASYMOTION ==========
-- Ver configuración en plugins/easymotion.lua
