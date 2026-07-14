return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
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
	},
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "v0.1.9",
		cmd = "Telescope",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim" },
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
					buffer_previewer_maker = image_preview,
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
					preview = {
						mime_hook = function(filepath, bufnr, opts)
							local is_image = function(filepath)
								local image_extensions = { "png", "jpg" } -- Supported image formats
								local split_path = vim.split(filepath:lower(), ".", { plain = true })
								local extension = split_path[#split_path]
								return vim.tbl_contains(image_extensions, extension)
							end
							if is_image(filepath) then
								local term = vim.api.nvim_open_term(bufnr, {})
								local function send_output(_, data, _)
									for _, d in ipairs(data) do
										vim.api.nvim_chan_send(term, d .. "\r\n")
									end
								end
								vim.fn.jobstart({
									"catimg",
									filepath, -- Terminal image viewer command
								}, { on_stdout = send_output, stdout_buffered = true, pty = true })
							else
								require("telescope.previewers.utils").set_preview_message(
									bufnr,
									opts.winid,
									"Binary cannot be previewed"
								)
							end
						end,
					},
				},
			})
		end,
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			shell = "bash",
			direction = "float",
			open_mapping = "<C-q>",
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{
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
	},
	{
		"FabijanZulj/blame.nvim",
		lazy = false,
		config = function()
			require("blame").setup({})
		end,
	},
}
