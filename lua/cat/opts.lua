vim.g.mapleader = ','

local set = vim.opt

set.softtabstop = 4
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = tr8
set.textwidth = 80
set.scrolloff = 8
set.number = true
set.relativenumber = true
set.autowrite = true
set.guicursor = 'a:block'

vim.diagnostic.config({ virtual_text = true })
