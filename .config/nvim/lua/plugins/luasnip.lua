return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	dependencies = {
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip").filetype_extend("cs", { "csharpdoc" })
		require("luasnip").filetype_extend("c", { "cdoc" })
		require("luasnip").filetype_extend("cpp", { "cppdoc" })
		require("luasnip").filetype_extend("sh", { "shelldoc" })
	end,
}
