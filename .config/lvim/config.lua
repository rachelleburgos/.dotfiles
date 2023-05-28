--[[
 `lvim` is the global options object
]]
-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- -- Change theme settings
lvim.colorscheme = "catppuccin-mocha"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- enable transparent windows
lvim.transparent_window = true

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- settings for vimtex
vim.opt.conceallevel = 1          -- each block of concealed text is replaced with one character
vim.g.tex_flavor = 'latex'        -- default tex file format
vim.g.vimtex_view_method = 'skim' -- choose which programs to use to view PDF files
vim.g.vimtex_view_skim_sync = 1   -- val 1 allows forward search after every successful compilation
vim.g.view_skim_activate = 1      -- val 1 allows change focus to skim after command `:VimtexView`


lvim.plugins = {
  {
    'christianchiarulli/nvcode-color-schemes.vim'
  },
  {
    'lervag/vimtex', --
    ft = 'tex',
    config = function()
      vim.cmd('call vimtex#init()')
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    version = "<CurrentMajor>.*",
    build = "make install_jsregexp"
  },
  { "catppuccin/nvim", name = "catppuccin" }
}
