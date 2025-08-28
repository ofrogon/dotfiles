local wezterm = require 'wezterm'
local commands = require 'commands'
local gpu_adapters = require('utils.gpu_adapter')

local config = wezterm.config_builder()

-- Font settings
config.font_size = 12
config.line_height = 1.2

config.font = wezterm.font("JetBrainsMono Nerd Font Mono", {
  weight = "Bold",
  stretch = "Normal",
  style = "Normal"
})

-- Colors
config.color_scheme = 'Catppuccin Macchiato'

-- Appearance
config.cursor_blink_rate = 0
-- config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
  left = 4,
  right = 4,
  top = 0,
  bottom = 0,
}
config.window_background_opacity = 0.9

-- Miscellaneous settings
config.max_fps = 120
config.front_end = 'WebGpu'
config.webgpu_power_preference = 'HighPerformance'
config.webgpu_preferred_adapter = gpu_adapters:pick_best()

-- Custom commands
wezterm.on('augment-command-palette', function()
  return commands
end)

return config
