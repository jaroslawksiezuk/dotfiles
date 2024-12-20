local modules = {
	"blade",
	"colors",
	"conform",
	"copilot",
	"lsp",
	"telescope",
	"treesitter",
}

local spec = {}

for _, module in ipairs(modules) do
	vim.list_extend(spec, require("jaroslawksiezuk.lazy." .. module))
end

return spec
