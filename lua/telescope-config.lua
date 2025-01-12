local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

telescope.setup{
  defaults = {
	  mappings = {
		  i = {
			  ["<esc>"] = actions.close
		  },
	  },
	  layout_config = {
		  horizontal = {
			  width = { padding = 0},
			  height = { padding = 0},
		  },
	  },
  },
  pickers = {
    -- Your specific pickers configuration here
  },
  extensions = {
    fzf = {
      fuzzy = false,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                        -- the default case_mode is "smart_case"
    }
  }
}

-- Load the fzf-native extension
telescope.load_extension('fzf')
