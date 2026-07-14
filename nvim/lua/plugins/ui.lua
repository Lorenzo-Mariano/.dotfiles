return {
	{
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
	},
	{
		"nvim-mini/mini.files",
		version = "*",
		config = function()
			require("mini.files").setup({
				windows = {
					preview = true,
				},
			})
			vim.api.nvim_set_keymap("n", "<C-b>", ":lua MiniFiles.open()<CR>", { noremap = true, silent = true })

			local map_split = function(buf_id, lhs, direction)
				local rhs = function()
					local cur_target = MiniFiles.get_explorer_state().target_window
					local new_target = vim.api.nvim_win_call(cur_target, function()
						vim.cmd(direction .. " split")
						return vim.api.nvim_get_current_win()
					end)

					MiniFiles.set_target_window(new_target)
					MiniFiles.go_in()
				end

				local desc = "Split " .. direction
				vim.keymap.set("n", lhs, rhs, { buffer = buf_id, desc = desc })
			end

			vim.api.nvim_create_autocmd("User", {
				pattern = "MiniFilesBufferCreate",
				callback = function(args)
					local buf_id = args.data.buf_id
					-- Tweak keys to your liking
					map_split(buf_id, "<C-x>", "belowright horizontal")
					map_split(buf_id, "<C-v>", "belowright vertical")
					map_split(buf_id, "<C-t>", "tab")
				end,
			})
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"karb94/neoscroll.nvim",
		opts = {
			mappings = { "<C-u>", "<C-d>" },
			duration_multiplier = 0.5,
			easing = "quadratic",
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},
}
