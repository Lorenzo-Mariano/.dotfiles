-- Noctalia colors for Hyprland (auto-generated, do not edit)

local primary = "rgb({{colors.primary.default.hex_stripped}})"
local surface = "rgba({{colors.surface.default.hex_stripped}}bf)"
local secondary = "rgb({{colors.secondary.default.hex_stripped}})"
local error_color = "rgb({{colors.error.default.hex_stripped}})"
local tertiary = "rgb({{colors.tertiary.default.hex_stripped}})"
local surface_lowest = "rgb({{colors.surface_container_lowest.default.hex_stripped}})"

hl.config({
	general = {
		col = {
			active_border = {
				colors = {
					primary,
					secondary,
					tertiary,
					error_color,
				},
			},
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
