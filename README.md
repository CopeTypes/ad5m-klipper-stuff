# Stuff for the FlashForge Adventurer 5M Pro (only) running Klipper firmware
## Klipper firmware available [here](https://github.com/xblax/flashforge_ad5m_klipper_mod)

# Initial Setup
-  Open macros.cfg on your printer (from within Fluidd/Mainsail on your PC, etc)
-  Copy the code from [here](https://raw.githubusercontent.com/CopeTypes/ad5m-klipper-stuff/main/ad5m-pro-macros.cfg) and paste it at the bottom (you may delete the first line, it's just a reminder)
-  Click save and reboot (or reboot manually before your next print, the macro changes will *not* apply until a reboot..)

# OrcaSlicer setup
-  Click the pen and pad icon in OrcaSlicer (next to the printer profile name) to open Printer settings
-  Copy the gcode from [here](https://raw.githubusercontent.com/CopeTypes/ad5m-klipper-stuff/main/orcaslicer-start-gcode.gcode) and paste it into start g-code panel (in Machine G-code)
-  In the end g-code panel (in Machine G-code), put _COMPLETE_PRINT

# Macro/GCode enhancements
- Improved bed leveling - Calibrate only in the print area to reduce leveling time (adaptive bed mesh)
- Improved priming sequence tos tart moving the extruder early before heating is complete, to prevent oozing anywhere.
- Wait for the part/bed to cool before alerting / "completing" the print, so you can remove it as soon as it's marked done. (This will adversely extend the print time estimates, etc. of things due to the added delay..)

# Standard 5M support
I don't have the standard edition, so I won't be making separate versions etc, but there aren't many differences.

You would need to remove calls to any air circulation macro, and may need to change some other fan code. Everything else *should* be the same
