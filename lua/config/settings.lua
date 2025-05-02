local o = vim.opt

o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldenable = true

-- Ajusta el nivel de fold inicial (0 = todo colapsado, 99 = todo expandido)
o.foldlevel = 99

-- Mostrar solo la primera línea del fold
o.foldtext = 'v:lua.vim.treesitter.foldtext()'

-- Alternativa más personalizada: mostrar solo la primera línea sin "lines: ..."
o.foldtext = 'getline(v:foldstart)'

-- Quitar el símbolo de líneas colapsadas si no te gusta el `+--` visualmente
o.fillchars = { fold = " " }

o.number = true
o.relativenumber = true
-- uses the clipboard register for all operations except yank.
o.clipboard = "unnamedplus"
-- When this option is set, the syntax with this name is loaded.
o.syntax = "on"
o.nu = true
-- Copy indent from current line when starting a new line.
o.autoindent = true
o.expandtab = true
-- Number of spaces to use for each step of (auto)indent.
o.shiftwidth = 4

-- Sets the character encoding used inside Vim.
o.encoding = "UTF-8"
-- When on, the title of the window will be set to the value of 'titlestring'
o.title = true

o.hlsearch = false
o.incsearch = true
o.tabstop = 4

o.softtabstop = 4
o.shiftwidth = 4
