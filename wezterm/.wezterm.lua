local wezterm = require 'wezterm';

local config = wezterm.config_builder()

config.font = wezterm.font('Hack Nerd Font Mono', { weight = 'Regular' })
config.font_size = 18

config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.window_background_opacity = 0.80
config.macos_window_background_blur = 30

return config
