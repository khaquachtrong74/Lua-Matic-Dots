local hotkeys_popup = require("awful.hotkeys_popup")
local awful = require("awful")
local beautiful = require("beautiful")
local terminal = "alacritty"
local editor = os.getenv("EDITOR") or "neovim"
local editor_cmd = terminal .. " -e " .. editor
local menubar = require("menubar")

local theme = require('theme')
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local myawesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awesome.conffile },
   { "restart", awesome.restart },
  { "quit", function() awesome.quit() end },
}
local myoptions = {
    {"terminal", terminal},
    {"record","obs"},
    {"obsidian", "obsidian"},
    {"dolphin", "dolphin"},
    {"firefox","firefox"},
}
local mymainmenu = awful.menu({ 
    items = { 
        { 
            " awesome", myawesomemenu, 
            beautiful.theme_assets.awesome_icon(dpi(24),theme.fg_focus,theme.bg_normal)},
        { " optional", myoptions},
    },
    theme = {
        width           = dpi(120),
        height          = dpi(24),
        bg_normal       = theme.bg_normal,
        fg_normal       = theme.fg_normal,
        bg_focus        = theme.bg_focus,
        fg_focus        = theme.fg_focus,
        border_color    = theme.border_color,
        border_width    = theme.border_width,
    }

})

menubar.utils.terminal = terminal
return mymainmenu
