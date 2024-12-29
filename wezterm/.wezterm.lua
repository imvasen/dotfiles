local wezterm = require 'wezterm';

local config = wezterm.config_builder()

-- Ligatures => == -> !== -> != -> <= -> >=
config.font = wezterm.font('CaskaydiaCove Nerd Font', { weight = 'Regular' })
config.font_size = 16

config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- key mappings
config.keys = {
  -- { key = 'End', action = wezterm.action.SendKey { mods = 'CTRL', key = 'E' } },
  -- { key = 'Home', action = wezterm.action.SendKey { mods = 'CTRL', key = 'A' } },
  -- opt arrow move by word
  { key = 'LeftArrow',  mods = 'ALT', action = wezterm.action.SendKey { mods = 'ALT', key = 'B' } },
  { key = 'RightArrow', mods = 'ALT', action = wezterm.action.SendKey { mods = 'ALT', key = 'F' } },
  { key = 'UpArrow',    mods = 'ALT', action = wezterm.action.SendKey { mods = 'ALT', key = '{' } },
  { key = 'DownArrow',  mods = 'ALT', action = wezterm.action.SendKey { mods = 'ALT', key = '}' } },
}

config.macos_window_background_blur = 30

-- colors
config.color_scheme = "Tokyo Night"
config.window_background_opacity = 0.85

config.default_cursor_style = "BlinkingUnderline"
config.cursor_blink_rate = 250

return config
