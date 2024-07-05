local keyMapper = require("utils.keyMapper").mapKey
local servers = {
	"lua_ls",
	"tsserver",
	"gopls",
	"pyright",
	"jedi_language_server",
	"pylsp",
	"clangd",
	"cmake",
	"autotools_ls",
	"marksman",
	"r_language_server",
	"lemminx",
	"jsonls",
	"dockerls",
	"docker_compose_language_service",
}

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
        automatic_installation = true,
				ensure_installed = servers,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			for _, server in ipairs(servers) do
				lspconfig[server].setup({})
			end

			keyMapper("K", vim.lsp.buf.hover)
			keyMapper("<leader>r", vim.lsp.buf.rename)
			keyMapper("<leader>ca", vim.lsp.buf.code_action)

			vim.lsp.handlers["textDocument/publishDiagnostics"] =
				vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
					virtual_text = false,
					underline = false,
					signs = true,
				})
		end,
	},
}
