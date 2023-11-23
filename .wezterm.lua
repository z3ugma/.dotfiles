local wezterm = require 'wezterm'

config = {}

-- wezterm.gui is not available to the mux server, so take care to
-- do something reasonable when this config is evaluated by the mux
function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'nordfox'
  else
    return 'dawnfox'
  end
end


config.font =
  wezterm.font("Monaco")
config.font_size=16.0

config.initial_rows = 30
config.initial_cols = 120

config.color_scheme = scheme_for_appearance(get_appearance())

return config
