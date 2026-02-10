# Detección Automática de Cambios en el Filesystem

He configurado Neovim para detectar automáticamente archivos nuevos y cambios realizados fuera del editor (como cuando creas archivos desde toggleterm). Aquí está cómo funciona:

## ¿Qué se cambió?

### 1. **Options (lua/config/options.lua)**
Se añadieron dos opciones:
```lua
opt.autoread = true   -- Releer archivos cuando cambian en disco
opt.autowrite = true  -- Guardar automáticamente antes de comandos
```

- `autoread`: Neovim releerá automáticamente archivos que se modifiquen fuera del editor
- `autowrite`: Los cambios se guardarán antes de ejecutar ciertos comandos

### 2. **Init.lua - Autocomandos**
Se agregó un grupo de autocomandos que detectan cambios del filesystem:

```lua
-- Cuando la ventana gana foco (vuelves a Neovim)
-- Cuando entra un buffer (cambias de archivo)
-- Cuando cierras toggleterm
```

En estos eventos, se ejecuta `:checktime` que recarga archivos modificados externamente.

### 3. **Toggleterm**
Se configuró para que ejecute `:checktime` cuando cierras la terminal:
```lua
on_close = function()
  vim.cmd("checktime")
end,
```

Esto asegura que después de crear archivos desde toggleterm, Neovim se entere inmediatamente.

### 4. **Keymaps (lua/config/keymaps.lua)**
Se agregó un keymap para refrescar manualmente:
```lua
<leader>rf  -- Refrescar cambios del filesystem (ejecuta :checktime)
```

## Cómo funciona

### Detección Automática

1. **Al cambiar a otra ventana y volver**: Neovim detecta que la ventana ganó foco y recarga archivos modificados
2. **Cuando cierras toggleterm**: Automáticamente refresa los archivos creados
3. **Cuando cambias de buffer**: Similar al punto 1

### Refrescado Manual

Si por alguna razón los cambios no se detectan automáticamente:
```
<leader>rf
```

Esto ejecuta `:checktime` que recarga todos los archivos que cambien externamente.

## Solución para autocompletado de directorios

El autocompletado debería funcionar mejor ahora porque:

1. Los archivos nuevos se detectan automáticamente
2. Neovim recarga el estado del filesystem constantemente
3. Telescope (fuzzy finder) puede usar `:checktime` antes de buscar

## Solución para LSP y nuevas definiciones

Para que el LSP se entere de nuevas clases/métodos/funciones:

### Opción 1: Refrescar Telescope/búsquedas
Después de crear nuevos archivos, cuando uses:
```
gd  -- Go to definition
gR  -- Show references
gi  -- Show implementations
```

Estos comandos usarán `:Telescope` que escanea el filesystem base en el estado actual.

### Opción 2: Reinicia LSP manualmente (si es necesario)
```
<leader>rs  -- Restart LSP
```

Esto reinicia todos los servidores de lenguaje para que rescaneen el proyecto.

### Opción 3: Espera 300ms
El `updatetime` es de 300ms, así que Neovim verificará cambios regularmente. Si el cambio no se detecta inmediatamente, espera un momento y prueba de nuevo.

## Flujo recomendado

### Cuando creas archivos desde toggleterm:
```
1. Abre toggleterm: <leader>tf
2. Crea tus archivos: touch new-file.lua, mkdir new-folder, etc.
3. Cierra toggleterm: <Esc> o <leader>tf de nuevo
4. ¡Automáticamente se refrescarán los cambios!
5. Ahora puedes usar Telescope para buscar los archivos: <leader>ff
```

### Cuando trabajas con LSP y nuevas definiciones:
```
1. Creas un archivo con una nueva clase: MyClass
2. Vuelves a Neovim (o cambias a otra ventana)
3. En el archivo anterior, writes <leader>rf para asegurar detección
4. Ahora usa gd para ir a la definición
```

## Troubleshooting

### Si aún no ve los archivos nuevos:
1. Presiona `<leader>rf` para forzar refresco
2. Reinicia LSP: `<leader>rs`
3. Cierra y abre el archivo: `:edit %`

### Si el autocompletado sigue sin funcionar:
1. Telescope debería buscar desde el directorio actual
2. Prueba: `<leader>ff` (find files)
3. Si no ve archivos nuevos, presiona `<leader>rf` antes

### Si tienes muchos archivos:
Puede haber un lag al refrescar. Para optimizar:
```lua
-- En options.lua, puedes aumentar updatetime si es necesario:
opt.updatetime = 500  -- Más tiempo = menos checks, pero más responsivo
```

## Nota importante

**Refresco automático es suave**: Neovim verifica cambios cuando:
- Cambias a otra ventana y vuelves
- Cierras toggleterm  
- Cambias de buffer
- Después de 300ms de inactividad (por defecto)

Esto es lo suficientemente rápido para casi todos los casos, sin ralentizar el editor.
