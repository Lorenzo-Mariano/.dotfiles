-- Noctalia colors for Hyprland (auto-generated, do not edit)

local primary = "rgb(ebdbb2)"
local surface = "rgba(282828bf)"
local secondary = "rgb(8ec07c)"
local error_color = "rgb(fb4934)"
local tertiary = "rgb(83a598)"
local surface_lowest = "rgb(2c2b2a)"

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
