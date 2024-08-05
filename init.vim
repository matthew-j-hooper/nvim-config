:set softtabstop=4
:set tabstop=4
:set shiftwidth=4
:set colorcolumn=80
:set number
:set relativenumber

call plug#begin()
Plug 'nvim-lua/plenary.nvim'			"-Dependancy for telescope
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope.nvim'	"-File Searching
Plug 'scrooloose/nerdtree'				"-File Tree Windows
Plug 'feline-nvim/feline.nvim'			"-Reformats Bottom Bar
Plug 'lewis6991/gitsigns.nvim'			"-Git Intergration
Plug 'ellisonleao/gruvbox.nvim'			"-Color Scheme
Plug 'ryanoasis/vim-devicons'			"-Adds Icons, recommended last entry
Plug 'nvim-tree/nvim-web-devicons'		"-Adds Icons, recommended last entry
Plug 'romgrk/barbar.nvim'				"-Reformats Tabs
Plug 'petertriho/nvim-scrollbar'		"-Adds scrollbar
Plug 'kevinhwang91/nvim-hlslens'		"-Adds search results to scrollbar
Plug 'AckslD/nvim-neoclip.lua'			"-Adds Yank History
Plug 'isakbm/gitgraph.nvim'				"-Adds git tree buffer

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
call plug#end()

lua require('telescope-config')
lua require('gruvbox-config')
lua require('feline-config')
lua require('gitsigns-config')
lua require('lspconfig-config')
lua require('barbar-config')
lua require('scrollbar-config')
lua require('hlslens-config')
lua require('neoclip-config')
lua require('gitgraph-config')

autocmd VimEnter * NERDTree | wincmd p
