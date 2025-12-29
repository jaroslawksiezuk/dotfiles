return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				typescript = { "prettier" },
				javascript = { "prettier" },
				java = { "google-java-format" },
				go = { "gofmt", "goimports" },
				lua = { "stylua" },
			},
		})
	end,
}
