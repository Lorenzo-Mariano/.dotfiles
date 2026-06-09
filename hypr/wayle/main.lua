hl.on("hyprland.start", function()
	hl.exec_cmd("wayle shell")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd(
		"awww img '/home/nyormensho/Pictures/Anime/FITTED - xilmo - 2girls waterfront bench black sailor uniform gruvbox maybe 144475675_p0 (Edited)_1.png'"
	)
end)

hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot_region.sh"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wayle audio output-volume +1"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wayle audio output-volume -1"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wayle audio output-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set +1%"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 1%-"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("wayle media next"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("wayle media play-pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("wayle media play-pause"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("wayle media previous"))
