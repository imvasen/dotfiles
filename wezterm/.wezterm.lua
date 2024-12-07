local wezterm = require 'wezterm';

local config = wezterm.config_builder()

-- Ligatures => == -> !== -> != -> <= -> >=
config.font = wezterm.font('CaskaydiaCove Nerd Font', { weight = 'Regular' })
config.font_size = 18

config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- key mappings
config.keys = {
  { key = 'End', action = wezterm.action.SendKey { mods = 'CTRL', key = 'E' } },
  { key = 'Home', action = wezterm.action.SendKey { mods = 'CTRL', key = 'A' } },
}

config.macos_window_background_blur = 30

-- colors
config.color_scheme = "tokyonight_night"

config.default_cursor_style = "BlinkingUnderline"
config.cursor_blink_rate = 250

return config
