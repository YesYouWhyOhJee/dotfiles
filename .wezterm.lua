local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 15
config.font = wezterm.font("Noto Sans Mono")
config.color_scheme = "Catppuccin Macchiato"
config.initial_cols = 120
config.window_background_opacity = 0.8
config.initial_rows = 30
-- config.use_fancy_tab_bar = false
config.enable_tab_bar = false
-- config.window_background_image = "/usr/share/backgrounds/Province_of_the_south_of_france_by_orbitelambda.jpg"

wezterm.on("gui-startup", function(cmd)
	local guiwin = wezterm.gui
	if guiwin ~= nil then
		guiwin.get_appearance():perform_action("toggle-fullscreen")
	end
end)

return config
