require("jaroslawksiezuk.set")
require("jaroslawksiezuk.remap")
require("jaroslawksiezuk.lazy_init")

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		spacing = 2,
		source = "if_many",
	},
	signs = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
