return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"go",
				"java",
				"javascript",
				"typescript",
				"lua",
				"html",
				"php",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
