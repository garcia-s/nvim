local global = vim.g
local o = vim.opt

o.background = "dark"
vim.cmd("colorscheme oxocarbon")

o.number = true
o.relativenumber = true
-- uses the clipboard register for all operations except yank.
o.clipboard = "unnamedplus"


o.syntax = "on" -- When this option is set, the syntax with this name is loaded.
-- Copy indent from current line when starting a new line.
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent.
o.encoding = "UTF-8" -- Sets the character encoding used inside Vim.
-- Show the line and column number of the cursor position, separated by a comma.
-- When on, the title of the window will be set to the value of 'titlestring'
o.title = true

-- The time in milliseconds that is waited for a key code or mapped key sequence to complete.
o.ttimeoutlen = 0

-- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
o.wildmenu = true

-- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
o.showcmd = true
o.hlsearch = false 
o.incsearch = true
o.termguicolors = true
