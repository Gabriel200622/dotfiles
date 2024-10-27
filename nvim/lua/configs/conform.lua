local options = {
	-- :set ft? - to check filetype
	formatters_by_ft = {
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		svelte = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		jsonc = { "prettier" },
		json = { "prettier" },
		yaml = { "prettier" },
		markdown = { "prettier" },
		graphql = { "prettier" },
		liquid = { "prettier" },
		lua = { "stylua" },
		cpp = { "clang-format" },
		python = { "black" },
		go = { "gopls" },
	},

	format_on_save = {
		timeout_ms = 10000,
		lsp_fallback = true,
	},
}

return options
