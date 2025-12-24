local wezterm = require("wezterm")
local commands = require("commands")
local gpu_adapters = require("utils.gpu_adapter")

local config = wezterm.config_builder()

-- Shred Variables
local _windowTransparency = 0.9
local _screenBorderColor = string.format("rgba(36, 39, 58, %s)", _windowTransparency)

-- Font settings
config.font_size = 12
config.line_height = 1.2

config.font = wezterm.font_with_fallback({
	{
		family = "JetBrainsMono Nerd Font",
		weight = "Medium",
	},
	{ family = "Noto Color Emoji" },
	{ family = "Symbols Nerd Font Mono" },
})

-- Colors
config.color_scheme = "Catppuccin Macchiato"

-- Appearance
config.cursor_blink_rate = 0
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.hide_tab_bar_if_only_one_tab = true
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.window_padding = {
	left = 4,
	right = 4,
	top = 0,
	bottom = 0,
}
config.window_background_opacity = _windowTransparency
config.use_fancy_tab_bar = true
config.window_frame = {
	inactive_titlebar_bg = _screenBorderColor,
	active_titlebar_bg = _screenBorderColor,
	inactive_titlebar_border_bottom = _screenBorderColor,
	active_titlebar_border_bottom = _screenBorderColor,
	border_left_width = "0",
	border_right_width = "0",
	border_bottom_height = "0",
	border_top_height = "0",
}

-- Miscellaneous settings
config.max_fps = 120
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.webgpu_preferred_adapter = gpu_adapters:pick_best()

-- Custom commands
wezterm.on("augment-command-palette", function()
	return commands
end)

return config
