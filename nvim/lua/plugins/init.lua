return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre", "BufNewFile" },
		opts = require "configs.conform",
	},
	{
		"github/copilot.vim",
		lazy = false,
	},
	{
		"prisma/vim-prisma",
		lazy = false,
	},
	{
		"windwp/nvim-ts-autotag",
		-- opts = {
		-- 	enable_close = true,
		-- 	enable_rename = true,
		-- 	enable_close_on_slash = true,
		-- },
		lazy = false,
	},
	{
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		build = ":UpdateRemotePlugins",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {},
	},
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	dependencies = {
	-- 		"luckasRanarison/tailwind-tools.nvim",
	-- 		"onsails/lspkind-nvim",
	-- 	},
	-- 	opts = function()
	-- 		return {
	-- 			formatting = {
	-- 				format = require("lspkind").cmp_format {
	-- 					before = require("tailwind-tools.cmp").lspkind_format,
	-- 				},
	-- 			},
	-- 		}
	-- 	end,
	-- },

	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			highlight = {
				enable = true,
				disable = {},
			},
			indent = {
				enable = true,
				disable = {},
			},
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"html",
				"css",
				"astro",
				"cmake",
				"cpp",
				"fish",
				"gitignore",
				"go",
				"graphql",
				"http",
				"java",
				"php",
				"rust",
				"scss",
				"sql",
				"svelte",
				"typescript",
				"prisma",
				"tsx",
				"php",
				"json",
				"python",
			},
			autotag = {
				enable = true,
			},
		},
	},
}
