-- General options
vim.opt.swapfile = false
vim.g.mapleader = ',' -- map leader key to `,`
vim.opt.clipboard = "unnamedplus" -- Enable system clipboard
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers

-- Indentation
vim.opt.shiftwidth = 2 -- Indent by 4 spaces
vim.opt.tabstop = 2 -- Set tab width
vim.opt.expandtab = true -- Use spaces instead of tabs

-- Vertical bar at 100 chars
vim.cmd [[ set cc=100 ]]

-- Show whitespace
vim.opt.listchars = {
  eol = '↵',
  trail='·',
  extends='◣',
  precedes='◢',
  nbsp='○',
  tab='>-'
}

vim.opt.list = true

-- Plugin management (packer)
require('plugins')

-- Theme management
require('theme')

-- Custom Keybindings
require('keybinds')

