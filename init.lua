
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.colorcolumn = "80"
vim.opt.number = true
vim.opt.relativenumber = true

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = "~/.config/nvim/.venv/bin/python3"

vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
	local name, kind = ev.data.spec.name, ev.data.kind
	if name == 'telescope-fzf-native.nvim' and kind ~= 'delete' then
		func = vim.fn.jobstart({ 'make' }, {
			cwd = ev.data.path,
			on_exit = function(_, code)
				if code ~= 0 then
					vim.notify(name..' failed (make returned '..tostring(code)..')', vim.log.levels.ERROR)
				end
			end,
		})
		vim.fn.jobwait({func})
	end

	if name == 'avante.nvim' and kind ~= 'delete' then
		func = vim.fn.jobstart({ 'make' }, {
			cwd = ev.data.path,
			on_exit = function(_, code)
				if code ~= 0 then
					vim.notify(name..' failed (make returned '..tostring(code)..')', vim.log.levels.ERROR)
				end
			end,
		})
		vim.fn.jobwait({func})
	end

	if name == 'LuaSnip' and kind ~= 'delete' then
		func = vim.fn.jobstart({ 'make', 'install_jsregexp' }, {
			cwd = ev.data.path,
			on_exit = function(_, code)
				if code ~= 0 then
					vim.notify(name..' failed (make returned '..tostring(code)..')', vim.log.levels.ERROR)
				end
			end,
		})
	end
end })


vim.pack.add({
	{ src = 'https://github.com/lewis6991/gitsigns.nvim', },
	{ src = 'https://github.com/romgrk/barbar.nvim', },
	{ src = 'https://github.com/petertriho/nvim-scrollbar', },
	{ src = 'https://github.com/kevinhwang91/nvim-hlslens', },
	{ src = 'https://github.com/AckslD/nvim-neoclip.lua', },
	{ src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim', },
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons', },

	-- color schemes
	{ src = 'https://github.com/folke/tokyonight.nvim', },
	{ src = 'https://github.com/lucasprag/simpleblack', },
	{ src = 'https://github.com/gtr/rza', },

	-- Telescope and Telescope dependancies
	{ src = 'https://github.com/nvim-lua/plenary.nvim', },
	{ src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim', },
	{ src = 'https://github.com/nvim-telescope/telescope.nvim', },

	-- LSP - Completion Engine
	{ src = 'https://github.com/hrsh7th/cmp-nvim-lsp', },
	{ src = 'https://github.com/hrsh7th/cmp-buffer', },
	{ src = 'https://github.com/hrsh7th/cmp-path', },
	{ src = 'https://github.com/hrsh7th/cmp-cmdline', },
	{ src = 'https://github.com/hrsh7th/nvim-cmp', },
	{ src = 'https://github.com/L3MON4D3/LuaSnip', },
	{ src = 'https://github.com/saadparwaiz1/cmp_luasnip', },
})

require('gitsigns').setup()
require('hlslens').setup()
require('barbar').setup({ auto_hide = 1 })
require('neoclip').setup()

require('telescope-config')
require('lspconfig-config')
require('scrollbar-config')

vim.cmd.colorscheme('simpleblack')
vim.keymap.set('n', '<leader>fr', ':Telescope neoclip<CR>', {})
