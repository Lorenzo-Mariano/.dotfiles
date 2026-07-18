return {
	"akinsho/git-conflict.nvim",
	version = "*",
	config = function()
		-- Lighter highlights so my corneas stay intact before I turn 21
		vim.api.nvim_set_hl(0, "GitConflictCurrent", { fg = "#7aa2f7", bg = "NONE", bold = true })
		vim.api.nvim_set_hl(0, "GitConflictIncoming", { fg = "#9ece6a", bg = "NONE", bold = true })

		require("git-conflict").setup({
			default_mappings = true,
			default_commands = true,
			disable_diagnostics = false,
			list_opener = "copen",
			highlights = {
				incoming = "GitConflictIncoming",
				current = "GitConflictCurrent",
			},
		})
	end,
}
