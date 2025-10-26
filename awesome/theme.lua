local theme = {}
local beautiful = require("beautiful")
local dpi = require("beautiful.xresources").apply_dpi
theme.bg_normal     = "#071228"
theme.bg_wibar_normal = '#19102005'
theme.bg_focus      = "#fefef6"
theme.bg_urgent     = "#456789"
theme.bg_minimize   = "#2a2e36"
theme.bg_progressbar= '#bff4fb'

theme.fg_normal     = '#fafafa'
theme.fg_focus      = "#fb2a23" --"#ebd601" -- '#9cb3ae' --"#d8dee9"
theme.fg_urgent     = "#d8dee9"
theme.fg_minimize   = "#555556"
theme.fg_tool_normal= "#eead38"
theme.fg_widget_text = "#9cbde7"
theme.tag_bg = "#f7daa1"

theme.fg_tool = "#ebd601"
theme.bg_tool =  '#2e3440'
theme.wrap_bg = theme.bg_normal
theme.wrap_bg_tools = theme.bg_normal
theme.wrap_fg_usage = theme.fg_normal
theme.wrap_fg_tools = theme.fg_normal
-- Borders
theme.border_width  = 2
theme.border_normal = theme.fg_normal
theme.border_focus = theme.fg_focus
theme.border_marked = "#FF6F61"
-- Other
theme.useless_gap   = 6
theme.systray_icon_spacing = 6

theme.mylauncher = theme.fg_focus

theme.menu_height = 32
theme.menu_width = 32
beautiful.hotkeys_fg = "#d8dee9"
beautiful.hotkeys_modifiers_fg = theme.fg_focus
return theme
