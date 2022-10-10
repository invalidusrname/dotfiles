local wezterm = require 'wezterm'
local act = wezterm.action

return {
  color_scheme = "Solarized Dark Higher Contrast",
  font_size = 16
  keys = {
    { key = 'k', mods = 'CMD', action = act.ClearScrollback 'ScrollbackAndViewport' }
  }
  -- debug_key_events = true,
}

