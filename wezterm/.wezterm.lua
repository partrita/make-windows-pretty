-- Pull in the wezterm API
local wezterm = require("wezterm")
-- local mux = wezterm.mux
-- This will hold the configuration.

local config = wezterm.config_builder()
-- local gpus = wezterm.gui.enumerate_gpus()
-- config.webgpu_preferred_adapter = gpus[1]

-- 렌더링 설정
-- config.front_end = "Software"
-- config.front_end = "OpenGL"
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.max_fps = 144
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_rate = 500
config.term = "xterm-256color" -- Set the terminal type

-- 운영 체제에 따른 기본 프로그램 설정
local function set_default_program()
  if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    return { "pwsh.exe" }
  end
end

config.default_prog = set_default_program()

-- 색상 및 폰트 설정
config.color_scheme = "Catppuccin Frappe"
--config.color_scheme = "Nord (Gogh)"
config.font = wezterm.font_with_fallback({
  { family = "JBD2"},
  { family = "MesloLGM Nerd Font", scale = 1.0 },
  { family = "JetBrains Mono" },
})
config.font_size = 12.0

-- 창 장식 설정
config.window_decorations = "RESIZE"
config.window_background_opacity = 1.0
config.enable_tab_bar = true
-- config.prefer_egl = true
config.warn_about_missing_glyphs = false
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
  left = 3,
  right = 3,
  top = 3,
  bottom = 3,
}
-- config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
config.window_decorations = "NONE | RESIZE"
config.default_prog = { "powershell.exe", "-NoLogo" }
config.initial_cols = 80
-- config.window_background_image = "C:/dev/misc/berk.png"
-- config.window_background_image_hsb = {
--  brightness = 0.1,
-- }


-- tabs
config.hide_tab_bar_if_only_one_tab = true
-- config.use_fancy_tab_bar = false
-- config.tab_bar_at_bottom = true

-- config.inactive_pane_hsb = {
--  saturation = 0.0,
--  brightness = 1.0,
-- }

-- Muxtiplexing keymaps
local act = wezterm.action

config.leader = { mods = "CTRL", key = "b", timeout_milliseconds = 4000 }
config.keys   = {
  { mods = "LEADER", key = "v",           action = act.SplitVertical    { domain = "CurrentPaneDomain" } },
  { mods = "LEADER", key = "h",           action = act.SplitHorizontal  { domain = "CurrentPaneDomain" } },
  { mods = "LEADER", key = "x",           action = act.CloseCurrentPane { confirm = false              } },
  { mods = "LEADER", key = "LeftArrow",   action = act.ActivatePaneDirection "Left"  },
  { mods = "LEADER", key = "RightArrow",  action = act.ActivatePaneDirection "Right" },
  { mods = "LEADER", key = "UpArrow",     action = act.ActivatePaneDirection "Up"    },
  { mods = "LEADER", key = "DownArrow",   action = act.ActivatePaneDirection "Down"  },
  { mods = 'LEADER', key = 'a',           action = act.ActivateKeyTable { name = 'activate_pane', one_shot = false } },
  { mods = 'LEADER', key = 'r',           action = act.ActivateKeyTable { name = 'resize_pane'  , one_shot = false } },
  { mods = 'LEADER', key = 'c',           action = act.ActivateKeyTable { name = 'rotate_pane'  , one_shot = false } },
  { mods = 'LEADER', key = ']',           action = act.RotatePanes "Clockwise"        },
  { mods = 'LEADER', key = '[',           action = act.RotatePanes "CounterClockwise" },
  { mods = 'LEADER', key = 'p',           action = act{PaneSelect={alphabet="0123456789"}}},
}

-- 마우스 바인딩 설정
config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = "Left" } },
    mods = "CTRL",
    action = act.OpenLinkAtMouseCursor,
  },
}

return config
