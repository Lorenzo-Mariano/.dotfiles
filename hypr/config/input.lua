hl.config({
	cursor = {
		hide_on_key_press = true,
	},

	input = {
		accel_profile = "flat",
		touchpad = {
			natural_scroll = true,
			scroll_factor = 0.15,
		},
	},
})

-- laptop touchpad
hl.device({
	name = "asup1411:00-093a:200b-touchpad",
	sensitivity = 0.9,
})

-- laptop keyboard
hl.device({
	name = "at-translated-set-2-keyboard",
	kb_options = "altwin:swap_lalt_lwin",
})

-- magegee kb
hl.device({
	name = "sino-wealth-gaming-kb-",
	kb_options = "altwin:swap_lalt_lwin",
})

-- inplay mouse
hl.device({
	name = "sigmachip-usb-mouse",
	sensitivity = -0.05,
})
