-- init.lua 
-- neovim-specific config file

local opt = vim.opt
local cmd = vim.cmd
local g   = vim.g
local o   = vim.o
local fn  = vim.fn
local env = vim.env
local utils = require("utils")
local termcodes = utils.termcodes
local nmap = utils.nmap
local vmap = utils.vmap
local imap = utils.imap
local xmap = utils.xmap
local omap = utils.omap
local nnoremap = utils.nnoremap
local inoremap = utils.inoremap
local vnoremap = utils.vnoremap
local colors = require("theme").colors


require("options")
require("plugins")
