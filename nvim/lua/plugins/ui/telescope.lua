return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.1.9",
	cmd = "Telescope",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>th", builtin.colorscheme, { desc = "Telescope themes" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Telescope marks" })

		telescope.load_extension("ui-select")
		telescope.setup({
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					width = 0.9,
					preview_width = 0.6,
				},
				mappings = {
					n = {
						["dd"] = actions.delete_buffer,
						["<c-v>"] = actions.file_vsplit,
					},
				},
			},
		})
	end,
}
