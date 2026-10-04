-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", "Screenshot", "omarchy-capture-screenshot")

-- Omarchy's default tiling.lua binds SUPER+G to "Toggle window grouping".
-- Override it: SUPER+G now launches/focuses WhatsApp.
hl.unbind("SUPER + G")
o.bind("SUPER + G", "WhatsApp", { webapp = "https://web.whatsapp.com/", focus = true })
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Left ASUS monitor workspaces: SUPER+Q/W/E/R -> workspaces 11-14.
-- SUPER+W was "Close window"; close moves to SUPER+X (was "Universal cut").
hl.unbind("SUPER + W")
hl.unbind("SUPER + SHIFT + W") -- was: Omawrite
hl.unbind("SUPER + X")
o.bind("SUPER + X", "Close window", hl.dsp.window.close())

-- Remove HEY (paid 37signals email/calendar) web app bindings.
-- These must be unbound BEFORE the workspace loop below rebinds SUPER+SHIFT+E.
hl.unbind("SUPER + SHIFT + E")
hl.unbind("SUPER + SHIFT + ALT + E")
hl.unbind("SUPER + SHIFT + C")

local left_slots = { Q = "11", W = "12", E = "13", R = "14" }
for key, ws in pairs(left_slots) do
  o.bind("SUPER + " .. key, "Left workspace " .. key:lower(), hl.dsp.focus({ workspace = ws }))
  o.bind("SUPER + SHIFT + " .. key, "Move window to left workspace " .. key:lower(), hl.dsp.window.move({ workspace = ws }))
end

-- SUPER+TAB returns to the previous workspace on the currently focused monitor.
hl.unbind("SUPER + TAB")
o.bind("SUPER + TAB", "Previous workspace on focused monitor", hl.dsp.focus({ workspace = "previous_per_monitor" }))

-- Disable Super + scroll wheel workspace switching
hl.unbind("SUPER + mouse_down")
hl.unbind("SUPER + mouse_up")
hl.unbind("SUPER + ALT + mouse_down")
hl.unbind("SUPER + ALT + mouse_up")

-- SUPER+S was "Toggle scratchpad"; now launches/focuses Spotify.
hl.unbind("SUPER + S")
o.bind("SUPER + S", "Spotify", { launch = "spotify", focus = "^spotify$" })

-- SUPER+B launches the default browser (same as the default SUPER+SHIFT+B).
o.bind("SUPER + B", "Browser", { omarchy = "browser" })
