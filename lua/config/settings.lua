local o = vim.opt


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
