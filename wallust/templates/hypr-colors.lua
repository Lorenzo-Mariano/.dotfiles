-- Created with wallust, with wayle in mind.

hl.config({
	general = {
		col = {
			-- Need to learn how to do gradient with lua api. can't do it rn cuz walang wifi nanaman frick my 3rd worlder life
			active_border = {
				colors = {
					"rgb({{color1 | strip}})",
					"rgb({{color2 | strip}})",
					"rgb({{color3 | strip}})",
					"rgb({{color4 | strip}})",
					"rgb({{color5 | strip}})",
					"rgb({{color6 | strip}})",
				},
				angle = 45,
			},
			inactive_border = "rgba({{color0 | strip}}ee)",
		},
	},
})
