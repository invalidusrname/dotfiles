local wezterm = require 'wezterm'

local act = wezterm.action
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():set_position(140, 300)
end)

return {
  color_scheme = "Solarized Dark Higher Contrast",
  font_size = 14,

  keys = {
    { key = 'k', mods = 'CMD', action = act.ClearScrollback 'ScrollbackAndViewport' }
  },

  --initial_cols = 200,
  --initial_rows = 65,
}
