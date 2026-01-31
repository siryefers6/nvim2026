# 🚀 Neovim 2026 Configuration

Configuración completa y moderna de Neovim con Lazy.nvim y los mejores plugins para desarrollo.

## ✨ Características

- 🎯 **Leader Key**: Espacio
- ⚡ **EasyMotion**: `<leader><leader>s` + 2 caracteres con Flash.nvim
- 🎨 **Tema**: Catppuccin Mocha
- 🔌 **Gestión de plugins**: Lazy.nvim (instalación automática)
- 🤖 **IA**: GitHub Copilot integrado
- 🔍 **Búsqueda**: Telescope con FZF nativo
- 📝 **LSP**: Soporte completo para múltiples lenguajes
- 🌲 **Treesitter**: Resaltado de sintaxis avanzado
- 💻 **Terminal**: ToggleTerm integrado

## 📦 Plugins Incluidos

- **autopairs** - Auto-cierre de paréntesis, comillas, etc.
- **cmp** - Autocompletado inteligente con múltiples fuentes
- **colorscheme** - Catppuccin (con alternativas comentadas)
- **copilot** - Asistente de código con IA
- **easymotion** - Navegación rápida con Flash.nvim
- **gitsigns** - Indicadores Git en el margen
- **lsp** - Language Server Protocol
- **lualine** - Barra de estado elegante
- **mason** - Gestor automático de LSP/formatters/linters
- **telescope** - Búsqueda fuzzy potente
- **toggleterm** - Terminal flotante/horizontal/vertical
- **tree-sitter** - Resaltado de sintaxis inteligente

## 🚀 Instalación Rápida

### Prerrequisitos

1. **Neovim** >= 0.9.0
2. **Git**
3. **Node.js** (para Copilot y algunos LSP)
4. **Compilador C** (para Telescope)
5. **Ripgrep** (para búsqueda en archivos)

### Windows

```powershell
# Clonar el repositorio
git clone https://github.com/TU_USUARIO/nvim2026.git ~\AppData\Local\nvim

# Abrir Neovim (instalará todo automáticamente)
nvim
```

### Linux/macOS

```bash
# Clonar el repositorio
git clone https://github.com/TU_USUARIO/nvim2026.git ~/.config/nvim

# Abrir Neovim (instalará todo automáticamente)
nvim
```

## 📖 Documentación

Consulta [KEYBINDINGS.md](KEYBINDINGS.md) para la chuleta completa de atajos.

### Atajos Más Importantes

- `<Space>ff` - Buscar archivos
- `<Space>fs` - Buscar texto en archivos
- `<Space><Space>s` - EasyMotion (2 caracteres)
- `<Space>tf` - Terminal flotante
- `gd` - Ir a definición
- `<Space>ca` - Code actions
- `K` - Documentación hover

## 🛠️ Personalización

Todos los archivos de configuración están organizados en:

```
nvim/
├── init.lua                 # Punto de entrada
├── lua/
│   ├── config/
│   │   ├── options.lua     # Opciones de Neovim
│   │   └── keymaps.lua     # Atajos generales
│   └── plugins/            # Un archivo por plugin
```

Edita los archivos según tus necesidades y reinicia Neovim.

## 🔧 Comandos Útiles

- `:Lazy` - Gestionar plugins
- `:Mason` - Gestionar LSP/formatters
- `:TSUpdate` - Actualizar parsers de Treesitter
- `:checkhealth` - Verificar la salud de Neovim

## 📝 Notas

- Los plugins se instalan automáticamente en el primer inicio
- Los LSP servers se instalan automáticamente vía Mason
- La configuración usa Lazy.nvim para carga diferida (lazy loading)
- Sin conflictos de atajos, todo está cuidadosamente organizado

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Si encuentras algún problema o tienes sugerencias:

1. Fork el proyecto
2. Crea tu rama de feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

## 🙏 Agradecimientos

Gracias a todos los desarrolladores de los increíbles plugins que hacen posible esta configuración.

---

**Creado con ❤️ para la comunidad de Neovim en 2026**
