-- Extra autostart processes.
-- o.launch_on_start("my-service")

-- Tell XWayland apps the left ASUS 4K is the primary display.
hl.on("hyprland.start", function()
  hl.exec_cmd("xrandr --output DP-1 --primary")
  -- Blank displays on idle (screensaver replacement); the shell still handles locking.
  hl.exec_cmd("pgrep -x hypridle >/dev/null || uwsm-app -- hypridle")
end)
