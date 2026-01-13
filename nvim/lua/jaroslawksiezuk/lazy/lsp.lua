return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "gopls", "jdtls", "ts_ls" },
			handlers = {
				function(server_name)
					if server_name == "jdtls" then
						local lombok = vim.fn.expand("~/.local/share/java/lombok.jar")

						require("lspconfig").jdtls.setup({
							cmd = {
								vim.fn.stdpath("data") .. "/mason/bin/jdtls",
								("--jvm-arg=-javaagent:%s"):format(lombok),
							},
						})
						return
				  	end

					require("lspconfig")[server_name].setup({})
				end,
			},
		})
		require("cmp").setup({
			sources = {
				{ name = "nvim_lsp" },
			},
		})
	end,
}
