return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_c = {
					{
						"filename",
						path = 1,
					},
				},
				lualine_x = {
					"lsp_status",
				},
			},
		})
	end,
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
