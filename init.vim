:set softtabstop=4
:set tabstop=4
:set shiftwidth=4
:set colorcolumn=80
:set number
:set relativenumber

call plug#begin()

" -- Misc Addons
Plug 'lewis6991/gitsigns.nvim'			"-Git Intergration
Plug 'ryanoasis/vim-devicons'			"-Adds Icons, recommended last entry
Plug 'nvim-tree/nvim-web-devicons'		"-Adds Icons, recommended last entry
Plug 'romgrk/barbar.nvim'				"-Reformats Tabs
Plug 'petertriho/nvim-scrollbar'		"-Adds scrollbar
Plug 'kevinhwang91/nvim-hlslens'		"-Adds search results to scrollbar
Plug 'AckslD/nvim-neoclip.lua'			"-Adds Yank History
Plug 'isakbm/gitgraph.nvim'				"-Adds git tree buffer
Plug 'mechatroner/rainbow_csv'			"-Adds tools for editing csv files

" -- Color schemes
Plug 'ellisonleao/gruvbox.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'lucasprag/simpleblack'

" -- Telescope and Telescope dependancies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'

" -- LSP tools
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

lua require('telescope-config')
lua require('treesitter-config')
lua require('gitsigns-config')
lua require('lspconfig-config')
lua require('barbar-config')
lua require('scrollbar-config')
lua require('hlslens-config')
lua require('neoclip-config')
lua require('gitgraph-config')

colorscheme simpleblack
