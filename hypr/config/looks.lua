hl.config({
	general = {
		layout = "dwindle",
		no_focus_fallback = true,
		gaps_in = 0,
		gaps_out = 0,

		border_size = 2,
		col = {
			inactive_border = "rgba(0,0,0,0.75)",
		},
		resize_on_border = true,
		allow_tearing = false,
	},

	decoration = {
		rounding = 0,
		rounding_power = 2,

		dim_inactive = false,
		dim_strength = 0.25,
	},

	dwindle = {
		preserve_split = true,
	},

	misc = {
		disable_hyprland_logo = true,
	},
})

hl.curve("rubber", { type = "spring", mass = 1, stiffness = 60, dampening = 14 })
hl.animation({ leaf = "workspaces", enabled = true, speed = 10, spring = "rubber" })
