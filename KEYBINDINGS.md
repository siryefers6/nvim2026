# 🎯 CHULETA DE ATAJOS - NEOVIM

**Leader Key:** `Espacio` (Space)

---

## 📁 GENERAL

| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<C-s>` | Normal/Insert | **Guardar** archivo |
| `<leader>q` | Normal | **Salir** del buffer actual |
| `<leader>Q` | Normal | **Salir** forzado de todo |
| `<Esc>` | Normal | **Limpiar** resaltado de búsqueda |
| `<C-a>` | Normal | **Seleccionar** todo el archivo |

---

## 🧭 NAVEGACIÓN

### Ventanas (Splits)
| Atajo | Descripción |
|-------|-------------|
| `<C-h>` | Ir a ventana **izquierda** |
| `<C-j>` | Ir a ventana **abajo** |
| `<C-k>` | Ir a ventana **arriba** |
| `<C-l>` | Ir a ventana **derecha** |
| `<C-Up>` | **Aumentar** altura |
| `<C-Down>` | **Reducir** altura |
| `<C-Left>` | **Reducir** ancho |
| `<C-Right>` | **Aumentar** ancho |

### Buffers
| Atajo | Descripción |
|-------|-------------|
| `<Tab>` | Buffer **siguiente** |
| `<S-Tab>` | Buffer **anterior** |
| `<leader>x` | **Cerrar** buffer actual |

### Splits (Crear/Gestionar)
| Atajo | Descripción |
|-------|-------------|
| `<leader>sv` | Split **vertical** |
| `<leader>sh` | Split **horizontal** |
| `<leader>se` | **Igualar** tamaño de splits |
| `<leader>sx` | **Cerrar** split actual |

### Tabs
| Atajo | Descripción |
|-------|-------------|
| `<leader>tn` | **Nueva** tab |
| `<leader>tx` | **Cerrar** tab |
| `<leader>tl` | Tab **siguiente** |
| `<leader>th` | Tab **anterior** |

---

## ✏️ EDICIÓN

| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<` | Visual | **Indentar** izquierda (mantiene selección) |
| `>` | Visual | **Indentar** derecha (mantiene selección) |
| `<A-j>` | Normal/Visual | **Mover** línea(s) abajo |
| `<A-k>` | Normal/Visual | **Mover** línea(s) arriba |
| `p` | Visual | **Pegar** sin perder registro |
| `<M-e>` | Insert | **Fast wrap** autopairs |

---

## 🔍 TELESCOPE (Búsqueda)

### Archivos
| Atajo | Descripción |
|-------|-------------|
| `<leader>ff` | **Buscar** archivos |
| `<leader>fr` | Archivos **recientes** |
| `<leader>fs` | **Buscar** texto en archivos (live grep) |
| `<leader>fc` | Buscar **palabra** bajo cursor |
| `<leader>fb` | Listar **buffers** |

### Git
| Atajo | Descripción |
|-------|-------------|
| `<leader>gc` | **Commits** de Git |
| `<leader>gC` | **Commits** del buffer actual |
| `<leader>gf` | **Estado** Git (archivos modificados) |

### Utilidades
| Atajo | Descripción |
|-------|-------------|
| `<leader>fh` | Buscar **ayuda** |
| `<leader>fm` | Listar **marcadores** |
| `<leader>fk` | Listar **keymaps** |
| `<leader>fC` | Listar **comandos** |

### Dentro de Telescope
| Atajo | Descripción |
|-------|-------------|
| `<C-j>/<C-k>` | Navegar resultados |
| `<C-q>` | Enviar a **quickfix** |
| `<C-x>` | **Eliminar** buffer |

---

## 🚀 LSP (Autocompletado e IDE)

### Navegación de Código
| Atajo | Descripción |
|-------|-------------|
| `gd` | Ir a **definición** |
| `gD` | Ir a **declaración** |
| `gi` | Ir a **implementación** |
| `gt` | Ir a **tipo** |
| `gR` | Ver **referencias** |
| `K` | Ver **documentación** (hover) |

### Diagnósticos
| Atajo | Descripción |
|-------|-------------|
| `<leader>d` | Ver diagnóstico de **línea** |
| `<leader>D` | Ver diagnósticos del **buffer** |
| `[d` | Diagnóstico **anterior** |
| `]d` | Diagnóstico **siguiente** |

### Acciones
| Atajo | Descripción |
|-------|-------------|
| `<leader>ca` | **Code actions** |
| `<leader>rn` | **Renombrar** símbolo |
| `<leader>rs` | **Reiniciar** LSP |

---

## 🤖 COPILOT

| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<M-l>` | Insert | **Aceptar** sugerencia (Alt+L) |
| `<M-]>` | Insert | **Siguiente** sugerencia |
| `<M-[>` | Insert | Sugerencia **anterior** |
| `<C-]>` | Insert | **Descartar** sugerencia |
| `<M-CR>` | Insert | Abrir **panel** Copilot |

---

## 💬 CMP (Autocompletado)

| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<C-j>` | Insert | Item **siguiente** |
| `<C-k>` | Insert | Item **anterior** |
| `<C-b>` | Insert | Scroll docs **arriba** |
| `<C-f>` | Insert | Scroll docs **abajo** |
| `<C-Space>` | Insert | Mostrar **completado** |
| `<CR>` | Insert | **Confirmar** selección |
| `<C-e>` | Insert | **Cerrar** menú |
| `<Tab>` | Insert | Siguiente item / **snippet jump** |
| `<S-Tab>` | Insert | Item anterior / snippet jump atrás |

---

## ⚡ EASYMOTION (Flash.nvim)

| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<leader><leader>s` | Normal/Visual/Operator | **Flash Search** - 2 caracteres |
| `s` | Normal/Visual/Operator | **Flash** - salto rápido |
| `S` | Normal/Visual/Operator | **Flash Treesitter** - navegación de código |
| `r` | Operator | **Remote Flash** |
| `R` | Visual/Operator | **Treesitter Search** |
| `<C-s>` | Command | **Toggle** Flash Search |

---

## 🌿 GIT (Gitsigns)

### Navegación
| Atajo | Descripción |
|-------|-------------|
| `]c` | **Siguiente** hunk |
| `[c` | Hunk **anterior** |

### Acciones
| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<leader>gs` | Normal/Visual | **Stage** hunk |
| `<leader>gr` | Normal/Visual | **Reset** hunk |
| `<leader>gS` | Normal | Stage **buffer** completo |
| `<leader>gu` | Normal | **Undo** stage hunk |
| `<leader>gR` | Normal | Reset **buffer** completo |
| `<leader>gp` | Normal | **Preview** hunk |
| `<leader>gb` | Normal | **Blame** línea |
| `<leader>gB` | Normal | Toggle **inline blame** |
| `<leader>gd` | Normal | **Diff** del archivo |
| `<leader>gD` | Normal | Diff vs **HEAD** |

### Text Objects
| Atajo | Descripción |
|-------|-------------|
| `ih` | Seleccionar **hunk** (inner) |

---

## 💻 TERMINAL (ToggleTerm)

| Atajo | Descripción |
|-------|-------------|
| `<C-\>` | **Toggle** terminal (Ctrl+Backslash) |
| `<leader>tf` | Terminal **flotante** |
| `<leader>th` | Terminal **horizontal** |
| `<leader>tv` | Terminal **vertical** |
| `<Esc>` | Salir de modo terminal (en terminal) |
| `<C-h/j/k/l>` | Navegar ventanas (en terminal) |

---

## 🌲 TREESITTER (Text Objects)

### Selección
| Atajo | Descripción |
|-------|-------------|
| `<C-Space>` | **Iniciar** selección incremental |
| `<C-Space>` | **Expandir** selección (nodo) |
| `<BS>` | **Reducir** selección |

### Text Objects
| Atajo | Descripción |
|-------|-------------|
| `af` | **A**round **f**unction (outer) |
| `if` | **I**nner **f**unction |
| `ac` | **A**round **c**lass (outer) |
| `ic` | **I**nner **c**lass |
| `aa` | **A**round p**a**rameter (outer) |
| `ia` | **I**nner p**a**rameter |

### Navegación de Objetos
| Atajo | Descripción |
|-------|-------------|
| `]f` | **Siguiente** función (inicio) |
| `]F` | Siguiente función (**fin**) |
| `[f` | Función **anterior** (inicio) |
| `[F` | Función anterior (**fin**) |
| `]c` | **Siguiente** clase (inicio) |
| `[c` | Clase **anterior** (inicio) |

### Intercambio
| Atajo | Descripción |
|-------|-------------|
| `<leader>a` | **Intercambiar** parámetro con siguiente |
| `<leader>A` | Intercambiar parámetro con **anterior** |

---

## 🎨 EXTRAS

### Mason
- `:Mason` - Abrir **gestor** de LSP/formatters/linters
- `:MasonUpdate` - **Actualizar** herramientas

### Lazy (Gestor de Plugins)
- `:Lazy` - Abrir **interfaz** de Lazy
- `:Lazy update` - **Actualizar** plugins
- `:Lazy sync` - **Sincronizar** plugins
- `:Lazy clean` - **Limpiar** plugins no usados

---

## 📝 NOTAS

### Convenciones de teclas:
- `<C-x>` = Ctrl + x
- `<M-x>` o `<A-x>` = Alt + x
- `<S-x>` = Shift + x
- `<leader>` = Espacio (Space)
- `<CR>` = Enter
- `<Esc>` = Escape
- `<BS>` = Backspace

### Configuración personalizada:
- Los atajos están diseñados para **no tener conflictos**
- Los atajos relacionados usan **prefijos consistentes**:
  - `<leader>f` = **Find** (búsqueda)
  - `<leader>g` = **Git**
  - `<leader>t` = **Terminal/Tabs**
  - `<leader>s` = **Splits**
  - `<leader>c` = **Code** (LSP)

---

## 🚀 INSTALACIÓN

### Prerrequisitos:
1. **Neovim** >= 0.9.0
   ```bash
   nvim --version
   ```

2. **Git** (para Lazy.nvim)
   ```bash
   git --version
   ```

3. **Node.js** (para Copilot y algunos LSP)
   ```bash
   node --version
   ```

4. **Compilador C** (para Telescope fzf-native)
   - Windows: Visual Studio Build Tools o MinGW
   - Linux: `gcc` o `clang`
   - macOS: Xcode Command Line Tools

5. **Ripgrep** (para Telescope live_grep)
   ```bash
   # Windows (con Chocolatey)
   choco install ripgrep
   
   # O con Scoop
   scoop install ripgrep
   
   # Linux
   sudo apt install ripgrep  # Debian/Ubuntu
   
   # macOS
   brew install ripgrep
   ```

### Instalación:
1. **Respalda** tu configuración actual (si existe):
   ```bash
   # Windows
   mv ~\AppData\Local\nvim ~\AppData\Local\nvim.backup
   
   # Linux/macOS
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. La configuración está en: `c:\Users\Siryefers\Documents\nvim`

3. **Abre Neovim**:
   ```bash
   nvim
   ```

4. **Lazy.nvim** se instalará automáticamente y descargará todos los plugins.

5. Espera a que termine la instalación (verás una ventana de progreso).

6. **Reinicia** Neovim:
   ```vim
   :q
   nvim
   ```

7. **Mason** instalará automáticamente los LSP servers:
   ```vim
   :Mason
   ```
   - Verifica que los servidores se instalen correctamente (marca ✓ verde)

8. **Treesitter** instalará los parsers:
   ```vim
   :TSInstall all
   ```

9. Para **Copilot** (requiere cuenta de GitHub Copilot):
   ```vim
   :Copilot setup
   ```
   - Sigue las instrucciones para autenticarte

### Solución de problemas:

- **Error de compilación de Telescope fzf-native**:
  ```vim
  :Lazy build telescope-fzf-native.nvim
  ```

- **LSP no funciona**:
  ```vim
  :LspInfo
  :Mason
  ```

- **Treesitter errores**:
  ```vim
  :TSUpdate
  :TSInstall <language>
  ```

- **Ver logs de Lazy**:
  ```vim
  :Lazy log
  ```

---

**¡Disfruta tu configuración de Neovim! 🎉**
