-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = 'AdventureTime'
config.enable_wayland = true
config.default_prog = { '/home/linuxbrew/.linuxbrew/bin/fish', '-l' }
config.default_cursor_style = "SteadyBar"
config.initial_rows = 32
config.initial_cols = 160
config.keys = {
    {key="t", mods="CTRL", action=wezterm.action{SpawnTab="CurrentPaneDomain"}}
}
-- and finally, return the configuration to wezterm
return config

