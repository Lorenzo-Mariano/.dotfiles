return {
	"mfussenegger/nvim-lint",
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			yaml = { "yamllint" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			python = { "pylint" },
			markdown = { "rumdl" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
