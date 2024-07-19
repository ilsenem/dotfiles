-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable Netrw
vim.g.loaded_netrw = true
vim.g.loaded_netrwPlungin = true

-- Options
local opt = vim.opt

opt.autoindent = true
opt.clipboard = "unnamedplus"
opt.colorcolumn = { "80", "120" }
opt.copyindent = true
opt.cursorline = true
opt.cursorlineopt = "both"
opt.expandtab = true
opt.hlsearch = true
opt.ignorecase = true
opt.list = true
opt.listchars = {
        tab = "-->",
        nbsp = "󱁐",
        trail = "·",
}
opt.number = true
opt.relativenumber = true
opt.scrolloff = 10
opt.signcolumn = "yes"
opt.smartindent = true
opt.smartcase = true
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true
opt.termguicolors = true
opt.undofile = true
opt.wrap = false

