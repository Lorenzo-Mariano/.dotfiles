require("git"):setup()

require("bunny"):setup({
	hops = {
		-- key and path attributes are required, desc is optional
		-- { key = "t", path = "/tmp" },
		{ key = "u", path = "~", desc = "Current User" },
		{ key = "t", path = "~/.local/share/Trash/files", desc = "Recycle Bin" },

		{ key = { "d", "v" }, path = "~/dev", desc = "Developer" },
		{ key = { "r", "s" }, path = "~/dev/rust-stuff", desc = "Rust Projects" },
		{ key = { "r", "l" }, path = "~/dev/rust-stuff/rustlings", desc = "Rustlings" },

		{ key = { "o" }, path = "~/.local/share/osu", desc = "osu!" },

		{ key = { "d", "n" }, path = "~/Documents/Notes", desc = "Notes" },
		{ key = { "d", "b" }, path = "~/Documents/Books", desc = "Books" },
		{ key = { "d", "d" }, path = "~/Documents/Diary", desc = "Diary" },
		{ key = { "d", "l" }, path = "~/Downloads", desc = "Downloads" },

		{ key = { "p", "p" }, path = "~/Pictures", desc = "Pictures" },
		{ key = { "p", "i" }, path = "~/Pictures/Instagram", desc = "Insta Brainrot" },
		{ key = { "p", "a" }, path = "~/Pictures/Anime", desc = "Anime Pics" },
		{ key = { "p", "s" }, path = "~/Pictures/Screenshots", desc = "Screenshots" },

		{ key = { "v", "v" }, path = "~/Videos", desc = "Videos" },

		{ key = { "c", "c" }, path = "~/.config", desc = "Config Files" },
		{ key = { "c", "y" }, path = "~/.config/yazi", desc = "Yazi Config" },
		{ key = { "c", "n", "r" }, path = "~/.config/niri", desc = "Niri Config" },
		{ key = { "c", "n", "v" }, path = "~/.config/nvim", desc = "Neovim Config" },

		-- { key = { "l", "s" }, path = "~/.local/share", desc = "Local share" },
		-- { key = { "l", "b" }, path = "~/.local/bin", desc = "Local bin" },
		-- { key = { "l", "t" }, path = "~/.local/state", desc = "Local state" },
	},
	desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
	ephemeral = true, -- Enable ephemeral hops, default is true
	tabs = true, -- Enable tab hops, default is true
	notify = true, -- Notify after hopping, default is false
	fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})

require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
	-- type = ui.Border.PLAIN,
})
