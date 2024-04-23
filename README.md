# M5 REMOTE

Please note that this is a modification of the OSSM-M5-Remote project by Ortlof, which is available at [https://github.com/ortlof/OSSM-M5-Remote](https://github.com/ortlof/OSSM-M5-Remote).

Also note that this is an early prototype that is not tested.

This modified project adds RGB Rotary encoders that can light the knobs, and allows the installation of an LED in the push-button.

Furthermore, communication with the board is switched to I2C, using a PWM controller for the LEDs and a port expander for the Rotary encoders. Note that this means that this modification is *not compatible* with the software written for the original OSSM M5 Remote. Currently, there only is a skeleton project [that sketches how to interface with the components on the board in the Firmware folder](./Firmware).

The modified PCB design can be found in the `Hardware/PCB` folder.

The remaining folders in this project are unchanged - please note that the software contained in this repository will not work with the changed hardware.

![1](image/new-top-pcb.png?raw=true "1" )

## Overview of the M5-Remote

The M5 Remote is a remote control platform, e.g. for Sex Toys, or estim devices.

The original project was developed for the OSSM project (https://github.com/KinkyMakers/OSSM-hardware).

This modified version currently does not have direct support for any toys, and requires you to write your own software.

To help with development and design join the KinkyMakers Discord: https://discord.gg/MmpT9xE . Be sure to say hello in the #m5-remote channel. 

# Build the M5 Remote Yourself

## PCB from JLCPCB

The PCB is designed to be made using the JLCPCB assembly service.

To order the PCB, go to [JLCPCP](https://jlcpcb.com) and upload the gerber zip contained in `PCB/jlcpcb`. Leave all settings at default - you can change the PCB colour if you want.

Enable "PCB" assembly, and choose "assemble bottom side" (not selected by default).

In the next step, upload `bom.csv` and `positions.csv`. Verify that the positioning of the components looks corerct before ordering.

## Bill Of Materials for sourcing Electrical Components

BOM is on Octopart for Easy Sourcing: https://octopart.com/bom-tool/pqx0O8QI

## Additional parts needed that are not found on Octopart:

Note - instead of the Kailh switches from pimoroni, any Cherry-compatible switch with LED hole can be used.

| Quantity | Part | Sourcing EU | Price € |
|----------|------|-------------|---------|
| 1x | Switch | https://shop.pimoroni.com/products/kailh-mechanical-switches-pack-of-12?variant=32056315314259 | 7
| 2x | M3x25mm Hex Head Cap Bolt | https://www.amazon.de/Edelstahl-Innensechskant-Bolzenset-Eisenrahmen-Mechanischer-Innensechskantschraube-Mutternset/dp/B07PPFT871/ | 12,97 € |
| 4x | M3x20mm Hex Head Cap Bolt | Comes as part of the set mentioned above | " | 
| 4x | Heat Set inserts M3 | https://www.amazon.de/ruthex-Gewindeeinsatz-St%C3%BCck-Gewindebuchsen-Kunststoffteile/dp/B08BCRZZS3 | 8,99 € |
| 1x | 3,7v 2000mAh Lipo Batterie Size 34,5 mm x 10,6 mm x 56 mm | https://www.amazon.de/EEMB-103454-2AhLithium-Schutzplatine-Isolationsbeschichtung/dp/B08214DJLJ/ | 14,89 € |

--------------------------------------------

| Quantity | Part | Sourcing US | Price $ |
|----------|------|-------------|---------|
| 2x | M3x25mm Hex Head Cap Bolt | https://www.amazon.com/dp/B09NR8X2LV | $17.99 |
| 4x | M3x20mm Hex Head Cap Bolt | Comes as part of the set mentioned above | " | 
| 4x | Heat Set inserts M3 | https://www.amazon.com/ruthex-M3-Threaded-Inserts-RX-M3x5-7/dp/B08BCRZZS3 | $10.99 |
| 1x | 3.7v 2000mAh Lipo Battery Size 34.5 X 56 X 10.6 mm (The wires will need to be reversed in the connector on this one! See Assembly instructions for more info.) | https://www.amazon.com/EEMB-2000mAh-Battery-Rechargeable-Connector/dp/B08214DJLJ/ | $14.99 |

## 3D Printed Parts Needed:

| Quantity | Part | Information |
|----------|------|-------------|
| 1x | Bottom.stl or Bottom_Adafruit_LIPO.stl or Bottom-Magnets.stl| There is a specific version for the wider Adafruit LIPO battery. Print with the base side facing down, 6 walls 20% Infill | 
| 1x | TOP-*-Keycap-Standoff.stl | Top Depends on your Keycap: Cherry or DSA (DSA is wider) | 
| 4x | M5_Remote_Knob_Customizable.scad | If you go for the 3d Printed knobs |

Filament - A good quality PLA works well. While there are no threads it is recommended that your printer is well calibrated.  

# [Assembly instructions](Assembly.md)