call plug#begin()

Plug 'tpope/vim-sensible'       " Base
Plug 'neovim/nvim-lspconfig'    " LSP
Plug 'williamboman/mason.nvim'  " Mason
Plug 'stevearc/conform.nvim'    " Formatter

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'f4z3r/gruvbox-material.nvim'   " Colorscheme
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}     " Highlighting

Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-neo-tree/neo-tree.nvim', {'branch': 'v3.x'}
Plug 'nvim-lualine/lualine.nvim'

Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'} " Snippets
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

lua require('core.options')
lua require('core.keymaps')
lua require('plugins.plugins')
