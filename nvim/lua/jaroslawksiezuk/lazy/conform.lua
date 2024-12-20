return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 1000,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				typescript = { "prettier" },
				javascript = { "prettier" },
				java = { "google-java-format" },
				go = { "gofmt", "goimports" },
				lua = { "stylua" },
				php = { "php-cs-fixer" },
				blade = { "blade-formatter" },
			},
		})
	end,
}
