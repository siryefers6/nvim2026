-- ============================================
-- NEOVIM CONFIGURATION - init.lua
-- ============================================

-- Leader key debe establecerse ANTES de cargar plugins
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

-- Cargar configuraciones básicas
require("config.options")
require("config.keymaps")

-- ============================================
-- AUTO DETECCIÓN DE CAMBIOS EN EL FILESYSTEM
-- ============================================

-- Grupo de autocomandos para detectar cambios externos
local augroup = vim.api.nvim_create_augroup("FileAutoRead", { clear = true })

-- Verificar cambios cuando vuelves a la ventana
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  group = augroup,
  callback = function()
    -- Ejecutar :checktime periódicamente para recargar archivos modificados
    vim.cmd("checktime")
  end,
  desc = "Recargar archivos modificados externamente cuando la ventana gana foco"
})

-- Refrescar cuando cambias de terminal de toggleterm
vim.api.nvim_create_autocmd("User", {
  group = augroup,
  pattern = "ToggleTermEnter",
  callback = function()
    -- Cuando entras a toggleterm, no hacer nada especial
  end,
  desc = "Hook para toggleterm"
})

-- Refrescar después de toggleterm
vim.api.nvim_create_autocmd("User", {
  group = augroup,
  pattern = "ToggleTermLeave",
  callback = function()
    -- Cuando sales de toggleterm, actualizar cambios
    vim.defer_fn(function()
      vim.cmd("checktime")
    end, 100)
  end,
  desc = "Refrescar cambios después de toggleterm"
})

-- Cargar plugins con lazy.nvim
require("lazy").setup("plugins", {
  ui = {
    border = "rounded",
    icons = {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      source = "📄",
      start = "🚀",
      task = "📌",
    },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
