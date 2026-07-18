return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			-- Note: will not be using prettierd anymore due to it not being able
			-- to detect plugins for some reason. Turns out it's a years old issue
			-- and it has not been fixed to this day.

			lua = { "stylua" },
			rust = { "rustfmt" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			yaml = { "prettier" },
			json = { "prettier" },
			toml = { "tombi" },
			cpp = { "clang-format" },
			css = { "prettier" },
			cs = { "csharpier" },
			markdown = { "prettier" },
			sh = { "shfmt" },
			php = { "pint" },
			blade = { "blade-formatter" },
		},
		format_after_save = {
			lsp_format = "fallback",
		},
	},
}
