return{
	{
		'VonHeikemen/lsp-zero.nvim', branch = 'v4.x',
		config = function()
			local lsp_zero = require('lsp-zero')

			local lsp_attach = function(client, bufnr)
				--usually keymaps go here
			end
			lsp_zero.extend_lspconfig({
			  sign_text = true,
			  lsp_attach = lsp_attach,
			  capabilities = require('cmp_nvim_lsp').default_capabilities(),
			})
			--python lsp
			require('lspconfig').pylsp.setup{}
		end
	},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{
		'hrsh7th/nvim-cmp',
		config = function()
			local cmp = require('cmp')
			local cmp_select = { behavior = cmp.SelectBehavior.Select }

			cmp.setup({
			    mapping = cmp.mapping.preset.insert({
				['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
				['<C-y>'] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			    }),
			  sources = {
			    {name = 'nvim_lsp'},
			  },
			  snippet = {
			    expand = function(args)
			      -- You need Neovim v0.10 to use vim.snippet
			      vim.snippet.expand(args.body)
			    end,
			  }
			})
		end
	}
}
