# 🎯 CONFIGURACIÓN DE VIM EN VSCODE

Guía completa para configurar VSCode con Vim usando los mismos atajos que tu configuración de Neovim.

---

## 📦 INSTALACIÓN

### 1. Instalar la extensión Vim

1. Abre VSCode
2. Ve a Extensions (`Ctrl+Shift+X`)
3. Busca "Vim" (por vscodevim)
4. Instala "Vim" de **vscodevim.vim**

### 2. Aplicar la configuración

**Opción A - Manual:**
1. Abre Settings en VSCode (`Ctrl+,`)
2. Click en el icono `{}` (arriba derecha) para abrir `settings.json`
3. Copia el contenido de `vscode-settings.json` en tu `settings.json`

**Opción B - Ruta directa:**
1. Ubicación del archivo en Windows:
   ```
   C:\Users\TU_USUARIO\AppData\Roaming\Code\User\settings.json
   ```
2. Abre el archivo y copia el contenido de `vscode-settings.json`

---

## ⚡ EASYMOTION EN VSCODE

EasyMotion funciona igual que en Neovim:

| Atajo | Descripción |
|-------|-------------|
| `<leader><leader>s` | Buscar con 2 caracteres (como Neovim) |
| `s` | Búsqueda rápida (shortcut) |

**Ejemplo:** 
- Presiona `<Space><Space>s`
- Escribe 2 caracteres
- Presiona la letra resaltada para saltar

---

## 🗝️ ATAJOS PRINCIPALES (Leader = Space)

### 📁 Búsqueda (Similar a Telescope)

| Atajo | Descripción |
|-------|-------------|
| `<leader>ff` | Buscar archivos (Quick Open) |
| `<leader>fs` | Buscar en archivos (Find in Files) |
| `<leader>fr` | Archivos recientes |
| `<leader>fb` | Listar buffers/editores |
| `<leader>fc` | Buscar texto en archivos |

### 🪟 Splits/Ventanas

| Atajo | Descripción |
|-------|-------------|
| `<leader>sv` | Split vertical |
| `<leader>sh` | Split horizontal |
| `<leader>sx` | Cerrar split actual |
| `<C-h>` | Navegar a split izquierda |
| `<C-l>` | Navegar a split derecha |
| `<C-k>` | Navegar a split arriba |
| `<C-j>` | Navegar a split abajo |

### 📑 Buffers/Tabs

| Atajo | Descripción |
|-------|-------------|
| `<Tab>` | Siguiente editor/tab |
| `<S-Tab>` | Editor/tab anterior |
| `<leader>x` | Cerrar editor actual |
| `<leader>w` | Guardar archivo |
| `<leader>q` | Cerrar editor |

### 🔍 LSP/Código

| Atajo | Descripción |
|-------|-------------|
| `gd` | Ir a definición |
| `gD` | Ir a declaración |
| `gi` | Ir a implementación |
| `gt` | Ir a tipo |
| `gR` | Ver referencias |
| `K` | Mostrar hover/documentación |
| `<leader>ca` | Code actions |
| `<leader>rn` | Renombrar símbolo |

### 🐛 Diagnósticos

| Atajo | Descripción |
|-------|-------------|
| `<leader>d` | Siguiente problema |
| `[d` | Problema anterior |
| `]d` | Problema siguiente |
| `<leader>D` | Ver panel de problemas |

### 🌿 Git

| Atajo | Descripción |
|-------|-------------|
| `<leader>gs` | Stage cambios |
| `<leader>gu` | Unstage cambios |
| `<leader>gp` | Siguiente cambio |
| `<leader>gc` | Commit |
| `<leader>gf` | Ver vista de Git |
| `]c` | Siguiente cambio |
| `[c` | Cambio anterior |

### 💻 Terminal

| Atajo | Descripción |
|-------|-------------|
| `<leader>tf` | Toggle terminal |
| `<C-\>` | Toggle terminal (Ctrl+Backslash) |

### 🛠️ Utilidades

| Atajo | Descripción |
|-------|-------------|
| `<leader>e` | Explorador de archivos |
| `<leader>E` | Toggle sidebar |
| `<leader>fk` | Ver keybindings |
| `<leader>fC` | Command palette |
| `<Esc>` | Limpiar búsqueda |

---

## ✏️ MODOS DE VIM

### Insert Mode
| Atajo | Descripción |
|-------|-------------|
| `jk` | Salir a normal mode (alternativa a Esc) |

### Visual Mode
| Atajo | Descripción |
|-------|-------------|
| `>` | Indentar a la derecha |
| `<` | Indentar a la izquierda |
| `J` | Mover líneas abajo |
| `K` | Mover líneas arriba |
| `<leader>ca` | Code actions en selección |

---

## 🎨 CONFIGURACIONES VISUALES

La configuración incluye:

✅ Números de línea relativos  
✅ Cursor con colores personalizados  
✅ Scroll context (8 líneas)  
✅ Sin minimap (más espacio)  
✅ Activity bar arriba  

---

## 🔧 PERSONALIZACIÓN

### Cambiar el Leader Key

Si quieres usar otra tecla como leader:

```json
"vim.leader": ",",  // Usar coma en lugar de espacio
```

### Deshabilitar EasyMotion

```json
"vim.easymotion": false,
```

### Ajustar colores de EasyMotion

```json
"vim.easymotionMarkerForegroundColorOneChar": "#00ff00",
```

### Agregar más atajos

Añade en `vim.normalModeKeyBindingsNonRecursive`:

```json
{
  "before": ["<leader>", "m", "i"],
  "commands": ["editor.action.customCommand"]
}
```

---

## 🚀 EXTENSIONES RECOMENDADAS

Para una mejor experiencia similar a Neovim:

1. **Vim** (vscodevim.vim) - Ya instalado
2. **GitLens** - Funciones Git avanzadas
3. **Error Lens** - Errores inline (como Neovim)
4. **Prettier** - Formateo automático
5. **Auto Rename Tag** - Como autopairs
6. **Bracket Pair Colorizer** - Paréntesis coloreados
7. **indent-rainbow** - Indentación visual
8. **Path Intellisense** - Autocompletado de rutas

---

## 📝 NOTAS IMPORTANTES

### Diferencias con Neovim:

- **No hay plugins**: VSCode usa extensiones nativas
- **Algunos atajos son aproximaciones**: VSCode tiene limitaciones
- **Performance**: VSCode Vim es más lento que Neovim nativo
- **Terminal**: La terminal de VSCode no es igual a ToggleTerm

### Atajos de VSCode que se mantienen:

Los siguientes atajos de VSCode están habilitados:

- `Ctrl+A` - Seleccionar todo
- `Ctrl+F` - Buscar
- `Ctrl+Z` - Deshacer
- `Ctrl+Y` - Rehacer
- `Ctrl+C/V/X` - Copiar/Pegar/Cortar

---

## 🐛 SOLUCIÓN DE PROBLEMAS

### Los atajos no funcionan:

1. Verifica que la extensión Vim esté activa (esquina inferior izquierda debe decir "-- NORMAL --")
2. Recarga VSCode (`Ctrl+Shift+P` > "Reload Window")
3. Verifica que no haya conflictos en `Keyboard Shortcuts`

### EasyMotion no funciona:

1. Asegúrate que `"vim.easymotion": true` esté en settings
2. Prueba reinstalar la extensión Vim
3. Recarga VSCode

### El cursor no se ve bien:

Ajusta los colores en `workbench.colorCustomizations`:

```json
"workbench.colorCustomizations": {
  "editorCursor.foreground": "#00ff00",  // Verde
}
```

---

## 🎯 COMANDOS ÚTILES DE VIM EN VSCODE

Puedes usar comandos Vim tradicionales:

- `:w` - Guardar
- `:q` - Cerrar
- `:wq` - Guardar y cerrar
- `:noh` - Limpiar búsqueda
- `:/texto` - Buscar texto
- `:%s/old/new/g` - Reemplazar todo

---

**¡Disfruta de Vim en VSCode! 🎉**
