-- options.lua
-- neovim options

local opt = vim.opt
local cmd = vim.cmd 

opt.spelllang = en_us -- word list set to us english
opt.number = true -- absolute + relative numbering = hybrid numbering 
opt.relativenumber = true
opt.scrolloff = 8 -- minimal # of screen lines to keep abv / below cursor
opt.clipboard   = "unnamedplus" -- allows neovim to access the system clipboard
opt.expandtab   = true -- convert tabs to spaces
opt.smartindent = true -- smart auto indenting 
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.termguicolors = true -- set termguicolors


