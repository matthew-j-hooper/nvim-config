require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the listed parsers MUST always be installed)
	ensure_installed = { "python", "lua", "vim" },

	-- Automatically install missing parsers when entering buffer
	auto_install = false,

	highlight = {
		enable = true,

		-- list of language that will be disabled
		disable = { "c", "rust" },

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		additional_vim_regex_highlighting = false,
	},
}
