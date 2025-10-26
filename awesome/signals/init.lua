local awful = require("awful")
local gears = require("gears")
local theme = require("theme")

client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = gears.table.join(
        awful.button({ }, 1, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.move(c)
        end),
        awful.button({ }, 3, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.resize(c)
        end)
    )
end)

client.connect_signal("focus", function(c) c.border_color = theme.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = theme.border_normal end)

client.connect_signal("property::floating", function(c)
    if c.class == "menubar" then
        gears.timer.start_new(0.1, function()
            c.geometry({
                width = 2000,
                height = 300,
                x = 400,
                y = 60
            })
            return false
        end)
    end 
end)

client.connect_signal("manage", function(c)
    if c.class == "menubar" then
        c:geometry({
            width = 500,
            height = 400,
            x = 100,
            y = 100
        })
    end
end)
screen.connect_signal("request::wallpaper", function(s)
    gears.wallpaper.maximized("/home/" .. os.getenv("USER") .. "/.config/awesome/images/background.png", s, true)
end)
