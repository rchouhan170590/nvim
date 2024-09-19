-- Ensure Packer is installed and loaded
vim.cmd [[packadd packer.nvim]]

-- Set Gruvbox color scheme
-- vim.cmd [[colorscheme gruvbox]]

-- -- Customize Gruvbox (optional)
-- vim.g.gruvbox_contrast_dark = 'medium'
-- vim.g.gruvbox_bold = false
-- vim.g.gruvbox_italic = false
-- vim.g.gruvbox_invert_selection = false

-- Set Cobalt2 color scheme
vim.cmd [[colorscheme cobalt2]]

-- Custom Highlighting
vim.cmd [[
  highlight Normal guifg=#ffffff guibg=#002b36
  highlight CursorLine guibg=#003847
  highlight Cursor guibg=#f0c674 guifg=#002b36
  highlight Visual guibg=#073642
  highlight Comment guifg=#657b83 gui=italic
  highlight Constant guifg=#268bd2
  highlight String guifg=#2aa198
  highlight Function guifg=#b58900
  highlight Identifier guifg=#cb4b16
  highlight Statement guifg=#859900
  highlight PreProc guifg=#d33682
  highlight Type guifg=#6c71c4
  highlight Special guifg=#dc322f
  highlight Underlined guifg=#b58900 gui=underline
  highlight Error guifg=#dc322f guibg=#002b36
  highlight Todo guifg=#cb4b16 guibg=#002b36
]]

vim.opt.guifont = "MesloLGS Nerd Font:h12"


-- Basic Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true


-- Highlight the current line
vim.opt.cursorline = true

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- You can use the built-in LSP diagnostics in Neovim to show the linting errors.
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
})

-- Plugins management via Packer
require('plugins')

-- Language Server Protocol (LSP) configuration
require('lsp_config')

-- Debug Adapter Protocol (DAP) configuration
require('dap_config')

-- Obsidian note-taking configuration
require('obsidian_config')


-- Load Nvim Tree configuration
require('nvimtree_config')

-- Lua Line configuration
require('lualine_config')

-- search file
require('telescope_config')


require('nvim_cmp')

-- indent-blankline configuration
require("ibl").setup {
    indent = {
        char = "|",
    },
    scope = {
        enabled = true,
        show_start = true,
        show_end = true,
    },
}

