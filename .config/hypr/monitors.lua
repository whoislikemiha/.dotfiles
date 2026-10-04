-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 2
local omarchy_monitor_scale = 1.6

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- ASUS XG32UCWMG 32" (left, DP-1) is a dual-mode panel. Its OSD switches it between
-- 4K 240Hz and 1080p 480Hz, and each mode advertises a different EDID, so we pick a
-- profile from whatever resolution the panel currently reports:
--   4K    -> scale 1.25 => 3072x1728 logical
--   1080p -> scale 1    => 1920x1080 logical (gaming)
-- LG UltraFine 27" 4K (right, DP-2) runs at 2560x1440@60, scale 1, centred vertically
-- against the ASUS.

local LG_W, LG_H = 2560, 1440
local profiles = {
  uhd = {
    asus = { mode = "3840x2160@240", scale = 1.25, w = 3072, h = 1728 },
  },
  fhd = {
    asus = { mode = "highrr", scale = 1, w = 1920, h = 1080 },
  },
}

local current_profile = nil

local function apply_profile(name)
  if current_profile == name then return end
  current_profile = name
  local a = profiles[name].asus
  local taller = math.max(a.h, LG_H)
  hl.monitor({
    output = "DP-1", mode = a.mode, scale = a.scale,
    position = string.format("0x%d", math.floor((taller - a.h) / 2)),
    vrr = 2, -- adaptive sync only for fullscreen windows (games)
  })
  hl.monitor({
    output = "DP-2", mode = string.format("%dx%d@60", LG_W, LG_H), scale = 1,
    position = string.format("%dx%d", a.w, math.floor((taller - LG_H) / 2)),
  })
end

local function detect_and_apply()
  local m = hl.get_monitor("DP-1")
  -- While DP-1 is blanked (DPMS off) or mid-modeset, Hyprland reports it as
  -- missing or zero-width. The old code fell through to the else branch and
  -- re-applied a rule, which re-enables the panel hypridle just blanked: a full
  -- 3840x2160@240 modeset ~2s after every blank. Worse, "fhd" uses mode
  -- "highrr", which on the 4K EDID resolves to 3840x2160@240, so the re-enable
  -- made the next poll read 3840 -> apply uhd -> ping-pong, which is where the
  -- bursts of back-to-back modesets in hyprland.log came from.
  -- An implausible width means "unknown", not "1080p": leave the layout alone.
  if not m or not m.width or m.width < 640 then return end
  if m.width <= 1920 then
    apply_profile("fhd")
  else
    apply_profile("uhd")
  end
end

detect_and_apply()
hl.on("monitor.added", detect_and_apply)
hl.on("monitor.layout_changed", detect_and_apply)
-- Fallback poll: the OSD dual-mode switch re-plugs the panel with a new EDID, so
-- re-check every 2s in case the event ordering misses it. Cheap: a single field read.
hl.timer(detect_and_apply, { timeout = 2000, type = "repeat" })

-- Left ASUS: letter workspaces q/w/e/r (11-14). Mark 11 as default so
-- the monitor does not boot into the first unclaimed numeric workspace.
hl.workspace_rule({ workspace = "11", monitor = "DP-1", persistent = true, default = true })
hl.workspace_rule({ workspace = "12", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "13", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "14", monitor = "DP-1", persistent = true })

-- Right LG: regular numbered workspaces 1-9.
hl.workspace_rule({ workspace = "1", monitor = "DP-2", persistent = true, default = true })
for ws = 2, 9 do
  hl.workspace_rule({ workspace = tostring(ws), monitor = "DP-2", persistent = true })
end
