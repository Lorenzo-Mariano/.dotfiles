return {
	{ "bjarneo/pixel.nvim" },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "akinsho/horizon.nvim", version = "*" },
	{ "gbprod/nord.nvim" },
	{ "sainnhe/gruvbox-material" },
	{
		"anAcc22/sakura.nvim",
		dependencies = "rktjmp/lush.nvim",
	},
	{
		"neanias/everforest-nvim",
		version = false,
		config = function()
			require("everforest").setup({
				background = "dark",
			})
		end,
	},
	{
		"everviolet/nvim",
		name = "evergarden",
		config = function()
			require("evergarden").setup({
				theme = {
					variant = "winter",
					-- this mostly changes stuff in lualine.
					-- green looks good, or a color that complements it.
					-- accent = "brown",
				},
				editor = {
					-- woah this actually works
					-- transparent_background = true,
					sign = { color = "none" },
					float = {
						color = "mantle",
						invert_border = false,
					},
					completion = {
						color = "surface0",
					},
				},
			})
		end,
	},
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				extra_groups = {
					"FoldColumn",
				},
			})
			vim.api.nvim_set_keymap("n", "<leader>tt", ":TransparentToggle<CR>", { noremap = true, silent = true })
		end,
	},
}
