local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Butrin (Gogh)'
config.font_size = 12.0
config.keys = {
  {mods="SUPER", key="Enter", action=wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }},
  {mods="SUPER", key="v", action=wezterm.action.PasteFrom "Clipboard" },
  {mods="SUPER|SHIFT", key="Enter", action=wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }},
  {mods="CTRL|SHIFT", key="e", action=wezterm.action.ActivatePaneDirection "Right" },
  {mods="CTRL|SHIFT", key="n", action=wezterm.action.ActivatePaneDirection "Left" },
  {mods="SUPER|SHIFT", key="n", action=wezterm.action.ActivateTabRelative(-1) },
  {mods="SUPER|SHIFT", key="e", action=wezterm.action.ActivateTabRelative(1) }
}

config.mouse_bindings = {
  -- Slower scroll up/down (3 lines instead of Page Up/Down)
  {
    event = { Down = { streak = 1, button = { WheelUp = 1 } } },
    mods = 'NONE',
    action = wezterm.action.ScrollByLine(-3),
    alt_screen = false,
  },
  {
    event = { Down = { streak = 1, button = { WheelDown = 1 } } },
    mods = 'NONE',
    action = wezterm.action.ScrollByLine(3),
    alt_screen = false,
  },
}

return config
