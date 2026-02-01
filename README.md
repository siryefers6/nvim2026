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

### Windows - Instalación de Dependencias

#### Opción 1: Con Winget (Recomendado)

```powershell
# Instalar Neovim (última versión)
winget install Neovim.Neovim

# Instalar Node.js (última versión LTS)
winget install OpenJS.NodeJS

# Instalar Ripgrep
winget install BurntSushi.ripgrep.MSVC

# Instalar Git (si no lo tienes)
winget install Git.Git
```

#### Opción 2: Con Chocolatey

```powershell
# Instalar Chocolatey (si no lo tienes, ejecuta PowerShell como Admin)
Set-ExecutionPolicy Bypass -Scope Process -Force; `
  iex ((New-Object System.Net.ServicePointManager).SecurityProtocol = `
  [System.Net.ServicePointManager]::SecurityProtocol -bor 3072); `
  iex (New-Object Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')

# Instalar dependencias
choco install neovim nodejs ripgrep git -y
```

#### Opción 3: Instalación Manual

- **Neovim**: Descarga en [nvim.io](https://neovim.io/)
- **Node.js**: Descarga en [nodejs.org](https://nodejs.org/)
- **Ripgrep**: Descarga en [github.com/BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep/releases)
- **Git**: Descarga en [git-scm.com](https://git-scm.com/)

#### Verificar Instalación

```powershell
# Verificar versiones instaladas
nvim --version
node --version
npm --version
rg --version
git --version
```

### Windows - Clonar e Instalar

```powershell
# Crear directorio si no existe
New-Item -ItemType Directory -Path "$env:LOCALAPPDATA\nvim" -Force

# Clonar el repositorio
git clone https://github.com/TU_USUARIO/nvim2026.git "$env:LOCALAPPDATA\nvim"

# Abrir Neovim (instalará todo automáticamente)
nvim
```

**Nota:** La primera vez que abras Neovim, se descargarán e instalarán automáticamente todos los plugins con Lazy.nvim. Esto puede tomar algunos minutos. Verás un menú con el progreso de instalación.

### Linux/macOS - Instalación de Dependencias

#### macOS (con Homebrew)

```bash
# Instalar Homebrew si no lo tienes
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Instalar dependencias
brew install neovim node ripgrep git
```

#### Linux (Debian/Ubuntu)

```bash
# Actualizar repositorios
sudo apt update
sudo apt upgrade -y

# Instalar dependencias
sudo apt install -y neovim nodejs npm ripgrep git build-essential
```

#### Linux (Fedora/RHEL)

```bash
# Instalar dependencias
sudo dnf install -y neovim nodejs npm ripgrep git gcc

# Para ripgrep si no está disponible:
cargo install ripgrep
```

#### Verificar Instalación

```bash
nvim --version
node --version
npm --version
rg --version
git --version
```

### Linux/macOS - Clonar e Instalar

```bash
# Clonar el repositorio
git clone https://github.com/TU_USUARIO/nvim2026.git ~/.config/nvim

# Abrir Neovim (instalará todo automáticamente)
nvim
```

**Nota:** La primera vez que abras Neovim, se descargarán e instalarán automáticamente todos los plugins con Lazy.nvim. Esto puede tomar algunos minutos.

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

## 🐛 Solución de Problemas

### Error: "rg" no encontrado

**Solución:**
- Verifica que Ripgrep esté instalado: `rg --version`
- Si no está instalado, usa `winget install BurntSushi.ripgrep.MSVC` (Windows) o `brew install ripgrep` (macOS) o `sudo apt install ripgrep` (Linux)

### Error: Node.js no encontrado

**Solución:**
- Verifica que Node.js esté instalado: `node --version`
- Instala la última versión LTS desde [nodejs.org](https://nodejs.org/)
- En Windows: `winget install OpenJS.NodeJS`

### Los plugins no se instalan automáticamente

**Solución:**
- Abre Neovim nuevamente con `:Lazy` para ver el estado
- Presiona `I` (Install) para instalar plugins faltantes
- Asegúrate de tener conexión a internet

### Copilot no funciona

**Solución:**
- Asegúrate de tener Node.js instalado
- Ejecuta `:Copilot auth` para autenticarte
- Verifica que tengas una cuenta GitHub con Copilot habilitado

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
