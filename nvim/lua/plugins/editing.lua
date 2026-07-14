return {
	{
		"romus204/tree-sitter-manager.nvim",
		dependencies = {}, -- tree-sitter CLI must be installed system-wide
		opts = {},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup({
				opts = {
					-- Defaults
					enable_close = true, -- Auto close tags
					enable_rename = true, -- Auto rename pairs of tags
					enable_close_on_slash = false, -- Auto close on trailing </
				},
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				-- Note: will not be using prettierd anymore due to it not being able
				-- to detect plugins for some reason. Turns out it's a years old issue
				-- and it has not been fixed to this day.

				lua = { "stylua" },
				rust = { "rustfmt" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				yaml = { "prettierd" },
				json = { "prettierd" },
				toml = { "tombi" },
				cpp = { "clang-format" },
				css = { "prettierd" },
				cs = { "csharpier" },
				markdown = { "prettierd" },
				sh = { "shfmt" },
				php = { "pint" },
				blade = { "blade-formatter" },
			},
			format_after_save = {
				lsp_format = "fallback",
			},
		},
	},
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "*",
		opts = {
			keymap = {
				["<C-u>"] = {
					function(cmp)
						cmp.scroll_documentation_up(4)
					end,
				},

				["<C-d>"] = {
					function(cmp)
						cmp.scroll_documentation_down(4)
					end,
				},

				["<C-l>"] = {
					function(cmp)
						cmp.show()
					end,
				},
			},
			appearance = {
				nerd_font_variant = "mono",
			},

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },

			completion = {
				menu = {
					draw = {
						components = {
							-- customize the drawing of kind icons
							kind_icon = {
								text = function(ctx)
									-- default kind icon
									local icon = ctx.kind_icon
									-- if LSP source, check for color derived from documentation
									if ctx.item.source_name == "LSP" then
										local color_item = require("nvim-highlight-colors").format(
											ctx.item.documentation,
											{ kind = ctx.kind }
										)
										if color_item and color_item.abbr ~= "" then
											icon = color_item.abbr
										end
									end
									return icon .. ctx.icon_gap
								end,
								highlight = function(ctx)
									-- default highlight group
									local highlight = "BlinkCmpKind" .. ctx.kind
									-- if LSP source, check for color derived from documentation
									if ctx.item.source_name == "LSP" then
										local color_item = require("nvim-highlight-colors").format(
											ctx.item.documentation,
											{ kind = ctx.kind }
										)
										if color_item and color_item.abbr_hl_group then
											highlight = color_item.abbr_hl_group
										end
									end
									return highlight
								end,
							},
						},
					},
				},

				documentation = {
					auto_show = true,
					auto_show_delay_ms = 100,
				},
			},
		},
		opts_extend = { "sources.default" },
	},
	{
		"brenoprata10/nvim-highlight-colors",
		opts = {},
	},
	{
		"brianhuster/live-preview.nvim",
		opts = {
			browser = "zen-browser --new-window",
		},
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
	},
}
