local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  }),
  matching = { disallow_symbol_nonprefix_matching = false }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').pyright.setup {
  capabilities = capabilities,
  settings = {
	  python = {
		  analysis = {
			  extraPaths = {
				  '/usr/share/blender/4.1/scripts/startup', 
				  '/usr/share/blender/4.1/scripts/modules', 
				  '/usr/lib/python312.zip', 
				  '/usr/lib/python3.12', 
				  '/usr/lib/python3.12/lib-dynload', 
				  '/usr/lib/python3.12/site-packages', 
				  '/usr/share/blender/4.1/scripts/freestyle/modules', 
				  '/usr/share/blender/4.1/scripts/addons/modules', 
				  '/home/matthew/.config/blender/4.1/scripts/addons/modules', 
				  '/usr/share/blender/4.1/scripts/addons', 
				  '/home/matthew/.config/blender/4.1/scripts/addons', 
				  '/usr/share/blender/4.1/scripts/addons_contrib'
			  }
		  }
	  }
  }
}
