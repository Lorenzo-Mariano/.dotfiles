require("noctalia/colors")
require("noctalia/binds")

hl.on("hyprland.start", function()
	hl.exec_cmd("qs -c noctalia-shell")
end)
