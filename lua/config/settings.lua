local o = vim.opt

o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldenable = true

o.foldlevel = 99

o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.nu = true

o.autoindent = true
o.expandtab = true
o.shiftwidth = 4

o.encoding = "UTF-8"
o.title = true

o.hlsearch = false
o.incsearch = true
o.tabstop = 4

o.softtabstop = 4
o.shiftwidth = 4

o.cmdheight = 0
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
