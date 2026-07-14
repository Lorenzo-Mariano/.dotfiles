-- Noctalia colors for Hyprland (auto-generated, do not edit)

local primary = "rgb(ebbcba)"
local surface = "rgba(191724bf)"
local secondary = "rgb(9ccfd8)"
local error_color = "rgb(eb6f92)"
local tertiary = "rgb(31748f)"
local surface_lowest = "rgb(1b1928)"

hl.config({
	general = {
		col = {
			active_border = primary,
			inactive_border = surface,
		},
	},

	group = {
		col = {
			border_active = secondary,
			border_inactive = surface,
			border_locked_active = error_color,
			border_locked_inactive = surface,
		},

		groupbar = {
			col = {
				active = secondary,
				inactive = surface,
				locked_active = error_color,
				locked_inactive = surface,
			},
		},
	},
})
