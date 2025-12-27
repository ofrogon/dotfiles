local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Variables
local TAB_DIVIDER_LEFT = wezterm.nerdfonts.ple_left_half_circle_thick
local TAB_DIVIDER_RIGHT = wezterm.nerdfonts.ple_right_half_circle_thick

-- Show Tab Bar
config.show_tabs_in_tab_bar = true
config.show_new_tab_button_in_tab_bar = true
config.use_fancy_tab_bar = true

-- Tab Bar style
function Tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	return tab_info.active_pane.title
end

wezterm.on("format-tab-title", function(tab, _, _, _, hover, max_width)
	local edge_background = "none"
	local background = "#ed8796"
	local foreground = "#494d64"

	if tab.is_active then
		background = "#c6a0f6"
		foreground = "#181926"
	elseif hover then
		background = "#ed8796"
		foreground = "#494d64"
	end

	local edge_foreground = background

	local title = Tab_title(tab)

	-- ensure that the titles fit in the available space,
	-- and that we have room for the edges.
	title = wezterm.truncate_right(title, max_width - 2)

	return {
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = TAB_DIVIDER_LEFT },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = TAB_DIVIDER_RIGHT },
	}
end)
