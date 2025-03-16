if vim.g.vscode then

else
local lsp_zero = require('lsp-zero')
--local coq = require("coq");
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

--lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
--	lsp_zero.default_keymaps({buffer = bufnr})
--end)
if vim.g.vscode then
	-- Nothing
	else

	require('mason').setup({})
	require('mason-lspconfig').setup({
		-- Replace the language servers listed here 
		-- with the ones you want to install
		ensure_installed = {'lua_ls','rust_analyzer', 'ts_ls', 'quick_lint_js', 'html', 'intelephense'  },
		handlers = {
			lsp_zero.default_setup,
		},
	})
	-- lsp_zero.setup()
	  vim.api.nvim_create_autocmd('LspAttach', {
	    desc = 'LSP actions',
	    callback = function(event)
	      vim.keymap.set('n', '<leader>k', '<cmd>lua vim.lsp.buf.hover()<cr>', {buffer = event.buf})
	      -- More keybindings and commands....
	    end
	  })

	--  lsp_zero.tsserver.setup({capabilities = lsp_capabilities})
	--  lsp_zero.rust_analyzer.setup({capabilities = lsp_capabilities})
	--  lsp_zero.tsserver.setup({capabilities = lsp_capabilities})
	--  lsp_zero.quick_lint.js.setup({capabilities = lsp_capabilities})

end
end
