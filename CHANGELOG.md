# Changelog — BeautifulRestedXP (formerly EUI RestedXP Skin)

## 0.11.9 (2026-11-13)

- Fix: on a RestedXP journey the arrow could point straight at the step's target and Waypoint UI named a "Map Pin"
  of yours instead of the route's next bend. When RestedXP pins its quest, ShortestPathForever gave up its waypoint,
  gave your old map pin back on the next step and, once Waypoint UI tracked that pin, wrote no bends until the target
  moved again. The guide's bend now stays tracked when RestedXP pins its quest, so ShortestPathForever keeps writing it.
- Waypoint UI: while the arrow is on, "Auto-Track Pin" (with "from Link") and "Use Waypoint UI Map Pins" are now
  switched off too, like "RestedXP support" already was: they take the game's waypoint from ShortestPathForever's bends.
  Switching the arrow off or resetting the settings gives your values back. "Auto-Track Pin" changes after a /reload.
- `/brxp nav` shows ShortestPathForever's saved bend, who owns the journey and Waypoint UI's switches.

## 0.11.8 (2026-11-12)

- Fix: the white quest objectives at the edge of the screen (and the missing waypoint) after a RestedXP step
  no longer stay. RestedXP pins the quest of the active step, ShortestPathForever read that as your own click and gave
  up its waypoint; the guide's journey is now set again by itself (your own quest clicks stay yours).

## 0.11.7 (2026-11-08)

- Fix: the RestedXP guide window no longer makes a steady stream of garbage that ended in stutters. RestedXP
  updates its steps several times per tick, and the list of upcoming steps was drawn again each time; it now draws
  only when a step it shows changes (its text, the progress, the mouse wheel, a step done). With the world map open,
  the look for ShortestPathForever's map pins no longer goes through every pin of every addon four times a second.
- ShortestPathForever: the route's next bend on the minimap is in the accent colour too. The game draws that waypoint
  itself, so a marker of ours in the accent now sits over it (held on the minimap's rim when the bend is further
  away, as the game does). Your own waypoints keep the game's look.
- Fix: closing GearQuest's arrow cancels only its own hunt. A journey you started after it (a map click, /way, the
  target switch) stays.
- Fix: with Waypoint UI, the arrow follows its navigation only while Waypoint UI tracks it (only then does
  ShortestPathForever hand its bends over). A pin of yours that Waypoint UI just holds is no longer taken for a bend.
- Fix: a waypoint the game keeps hidden (restricted maps) is left alone instead of being read for the minimap marker.
- Settings that ShortestPathForever adjusts when they are set (a slider's step) keep SPF's value, without a /reload
  hint.
- Less work in the background: the world map's pin watch runs only while the map is open, the minimap marker only
  while the route's accent colour is on, and the look for ShortestPathForever's arrow, compass and screen pin only
  during a journey (never without ShortestPathForever).
- With Waypoint UI tracking the route's bends, the minimap marker and OpenMap's waypoint marker take the accent too
  (the arrow, the minimap and OpenMap now share one check for "this waypoint is the route's bend").

## 0.11.6 (2026-11-07)

- With Waypoint UI: while the BeautifulRestedXP arrow is on, Waypoint UI's "RestedXP support" is switched off (and
  back on when you switch our arrow off). It made a navigation of its own to every RestedXP target, and while it was
  tracked ShortestPathForever handed its bends to Waypoint UI, where they landed in the map's corner: journeys showed
  no bends after a reload until that waypoint was clicked away.
- ShortestPathForever 1.22.46 and later: its own gold goal pin and, since 1.22.48, its numbered markers for stops
  and turns (world map, minimap, compass, on screen) are in the accent colour again, and with OpenMap the waypoint
  marker of the route's next bend too (your own waypoints keep their gold).
- Switching the target (RestedXP step, your own journey, a GearQuest hunt) first clears a waypoint that was still on
  the map. Such a leftover waypoint made ShortestPathForever skip the bends, and the arrow pointed at the end.

## 0.11.5 (2026-11-07)

- Fix: after you set your own waypoint (Shift-click on the map), the arrow pointed at the RestedXP target while the
  distance and name were those of your waypoint. ShortestPathForever first gives back the waypoint that stood before
  the guide's journey; the arrow now follows only waypoints ShortestPathForever set itself and otherwise points
  straight at your target until the route's first bend is placed. This also applies with "Arrow to the next map marker".

## 0.11.4 (2026-11-06)

- New: option "Show the BeautifulRestedXP arrow" (Navigation > Arrow), on by default. Switch it off when another addon
  such as TomTom shows the way. GearQuest hunts then use GearQuest's own arrow.
- ShortestPathForever's own arrow now stays invisible while this arrow is on, so you always see one arrow. "Show direction
  arrow" in ShortestPathForever stays on, because it gives this arrow the bends of the route; switching this arrow off
  puts your ShortestPathForever setting back. The option "Hide the ShortestPathForever arrow" is gone.

## 0.11.3 (2026-11-06)

- New: ShortestPathForever's journey and its markers follow the accent colour everywhere: the route and goal on the
  minimap, the route, stop buttons and numbers on the world map, the boat and zeppelin lines and the glow of a hovered
  dock, the flight master's tracked mark, and the compass and screen pins. Changing the accent repaints all of it at
  once. Transport and flight master icons keep their look. Switch it off under Navigation > Map ("Route and markers in
  the accent colour") to get ShortestPathForever's own colours back.

## 0.11.2 (2026-11-05)

- Fix: with ShortestPathForever following a RestedXP guide, the target no longer switches on and off several times a
  second in a looping kill area. RestedXP's own arrow is now made invisible instead of being switched off through its
  "Hide waypoint arrow" setting, which disturbed the guide's looping waypoints. The setting is cleaned up on the first
  start.

## 0.11.1 (2026-11-05)

- Fix: the RestedXP guide window no longer jumps when you let go of its size grip. The top edge stays where it is,
  the width stays as dragged, and the height goes back to the height of the rows.

## 0.11.0 (2026-11-05)

### New name, EllesmereUI optional
- EUI RestedXP Skin is now **BeautifulRestedXP**, built from the same source as BeautifulSkins. EllesmereUI is no
  longer required: without it the addon has its own options window with themes, fonts and accent colours, a minimap
  button and an entry in the game's AddOns options. With EllesmereUI the options stay in its options window.
- Settings of EUI RestedXP Skin are taken over on the first start: the update replaces the old folder with a small
  `EUI_RestedXP_Skin` folder that only loads the old settings. If the full old addon is still installed by hand, the
  new one waits and says so in the chat.
- With BeautifulSkins installed as well, BeautifulRestedXP steps back (BeautifulSkins contains the same skin).
- The command is now `/brxp` (`/euirxp` still works).

### Look and options
- **Thirteen themes** (instead of seven) with a theme gallery, and a **theme editor** for your own themes with live
  contrast check and export / import.
- New arrow option **Arrow to the next map marker** (the marker tracked right now, as ShortestPathForever's own arrow);
  the arrow shows the distance to the next bend while the goal is on another continent.
- Fix: the guide window keeps its place when its size grip is dragged.

### Target switch
- ShortestPathForever guides one journey at a time, and the RestedXP guide and your own journeys (a quest's
  "Plan journey", a map click, /way) replace each other. A new switch sets the guide's target again or goes back
  and forth between the guide's target and your last own journey: button in the guide window header, button in
  the Journey header of the tracker, Shift-click on the arrow, two key bindings (Key Bindings › AddOns) and
  `/brxp target` (`/brxp target guide` always sets the guide's target). Shift-click on a button sets the
  guide's target. In combat the switch happens when combat ends.
- New option Navigation › Arrow "Remember your own journey" (on): switches on ShortestPathForever's "Keep journeys
  after a reload", which is where the switch reads your own journey from. Off puts your previous setting back.
- The arrow now follows whatever journey ShortestPathForever guides, with distance, time and name for your own
  journey, instead of pointing straight at the guide's target while another journey runs.
- RestedXP's arrow: the remembered "Hide waypoint arrow" value is kept per RestedXP profile, so a second character
  no longer switches "Hide RestedXP's own arrow" off for the whole account.

## 0.10.0 (beta)

Tested on the World of Warcraft Forever beta (Interface 16001, German client) with ShortestPathForever 1.20.0.

### ShortestPathForever: Journey and compass
- The Journey section in the objective tracker column (ShortestPathForever's "Show journey in tracker") now looks
  like the EllesmereUI quest tracker: section header in the accent colour with a thin accent line, journey title in
  the quest title colour, steps in the quest tracker's font and grey, the current step in the accent colour, a
  dark panel behind it (colour of the EllesmereUI quest tracker background, opacity adjustable).
- The compass ("Show the compass" in ShortestPathForever) gets light ticks and letters in the EllesmereUI font,
  north, the centre mark and the walking marks in the accent colour, and with a background the window colour and
  a thin accent edge instead of black.
- New options page Navigation › Journey; the Compass bar page gets "Restyle the compass" and "Show the time left
  under the compass". Switching a skin off gives ShortestPathForever's own look back.
- `/euirxp spf` shows whether the skin found ShortestPathForever's frames.

## 0.9.0 (beta)

Tested on the World of Warcraft Forever beta (Interface 16001, build 70374, German client) with
RestedXP Guides 4.11.23, EllesmereUI 9.6 and ShortestPathForever 1.19.2.

### Guide window
- Restyles the RestedXP guide window in the EllesmereUI look: header with title, step counter, progress bar
  and ‹ › step buttons; current step with goals, counters and progress bars; list of upcoming steps
  (one line per goal, up to five per step, mouse wheel scrolls the whole guide, right-click = go to step).
- Window grows up or down, can be dragged to the screen edges, keeps RestedXP's saved position and width;
  "Reset window position" in the options.
- Target and item boxes sit at an edge of the window (auto, bottom, top, left, right) and can be dragged
  along it; they stay usable in combat.
- Optional: hide the window in combat and/or in instances (the guide logic keeps running).
- Blocks RestedXP's guide window v2 on request (one chat note, `/reload` needed).
- Dragging a box shows an accent line on the window edge where it will dock.
- The cog in the header uses the accent colour; right-click on it opens the EUI RestedXP Skin options.
- "Restyle RestedXP" off restores RestedXP's own look.

### Colours and theme
- Follows the EllesmereUI accent colour live; registers a "EUIRestedXPSkin" theme in RestedXP.
- The window colour is 161618 by default; custom accent, window background and progress colours; fonts from EllesmereUI or the game.
- With EllesmereUI third-party skinning switched off, a fallback colour is used and the options say so.

### Navigation arrow
- Own arrow (default size 70 %) fed by the ShortestPathForever route (falls back to a straight line to the RestedXP step target).
- Four styles, colour by direction or accent, states for travelling, transport (flight path, boat, zeppelin,
  lift, tram, portal, teleport, passage, with departure time) and "arrived".
- Keeps turning in combat; dragging is locked in combat. Optional "keep arrow centred".
- Hides RestedXP's own arrow on request and restores it when switched off.

### Options
- All settings live in the EllesmereUI options window, section "RestedXP" (`/euirxp`, addon compartment).
- Live arrow preview with state chips and route source.
- Selected ShortestPathForever settings (arrow, map, pins, transport kinds) can be changed from there;
  previous values are remembered and written back by "Reset to defaults".

### Languages
- English and German. The language follows "EUI Options Language" in the EllesmereUI global settings, otherwise the game client; any language other than German shows English.

### Known limitations
- Only tested on the Forever beta (Interface 16001); the TOC lists no other game version.
- Not tested inside instances (the arrow switches off there by design).
- With "lock boxes" on, RestedXP's window cannot be moved or resized during combat (protected boxes are
  anchored to it); height changes are applied after combat.
