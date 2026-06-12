hl.monitor({
	output = "",
	mode = "1920x1200@60",
	position = "auto",
	scale = 1.25,
})

hl.on("hyprland.start", function()
	hl.exec_cmd("kitty")


end)

require("modules.keybinds")
