local wz = require 'wezterm'
local mux = wz.mux

local conf = {}

-- Open terminal in fullsreen mode
wz.on('gui-startup', function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():toggle_fullscreen()
end)

-- For MacOS enjoyers
conf.native_macos_fullscreen_mode = true

conf.colors = {}
conf.colors.background = '#111111'

conf.font_size = 15.0
conf.font = wz.font 'Hack Nerd Font'

conf.enable_tab_bar = false
conf.enable_scroll_bar = false

conf.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return conf
