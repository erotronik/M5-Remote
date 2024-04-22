
# Assembling the M5 Remote

**Some important notes**

* Due to a lack of standardisation in LIPO battery polarity it is important to verify how yours is configured. If the battery is reversed it will result in the CORE M5 Stack being damaged.

## Solder the components

1. Place the encoders (Bourns  PEL12T-4225S-S1024) at SW1, SW2, SW3, and SW4 and solder them to the board.

2. The Cherry switch is soldered to the center position in the white square. After soldering the switch, add an LED to the switch if desired.

3. Next, the headers. Insert the headers from the front of the PCB (Amphenol Communications Solution 10129381-930001BLF), and solder each pin to the board.  

4. Finally we will solder the battery connector (JST S2B-PH-K-S(LF)(SN)) on the back side of the PCB. Choose one of the two possible locations depending on the polarity of the your battery.

5. Again pay special attention to the polarity of the Lithum battery you have, checking to see if the negative terminal of the battery connector will align with the negative pin of the connector on the PCB.

## 3D printed parts

All parts are printed with 6 walls and 20% infill with a .04 nozzle. No supports and no brim (just a skirt).

A good quality PLA works well. While there are no threads it is recommended that your printer is well calibrated.  

* Be sure to choose the correct back to print based on the battery that you source 

    USA - Adafruit 485-2011 / or [Alternate](https://www.amazon.com/EEMB-2000mAh-Battery-Rechargeable-Connector/dp/B08214DJLJ/) uses 'Bottom_Adafruit_Lipo.stl' OR you can use 'Bottom-Magnets.stl' if you want to add 6 x 3mm magnets.

    Other countries - [RS Pro 1449405](https://uk.rs-online.com/web/p/speciality-size-rechargeable-batteries/1449405) uses 'Bottom.stl', or if you want to use magnets in the base you can use 'Bottom-Magnets.stl' that will accept 6 x 3mm magnets.

* You have options for the top depending on the keycap type you choose (cherry vs DSA). 

    If you chose to buy a DSA keycap go with 'TOP-DSA-Keycap-Standoff_Bigger_Ecoder_Space.stl'

    If you chose to buy a Cherry Keycap go with 'TOP-Cherry-Keycap-Standoff_Bigger_Ecoder_Space.stl'

* You can print encoder knobs or purchaes separate ones, 'M5_Remote_Knob_Customizable.scad'

* If you would like to mount the OSSM M5 remote to a mini tripod you can print the excellent holder by KinkyMakers Discord community member GHHOSS, the file is called  'M5_Tripod_Holder_v3.stl' and can be found in the 'GHHOSS_tripod_mount' folder.

* Finally you will add the M3 brass heatset inserts to the underside of the **TOP** piece.

## Final Assembly

1. Remove the M5 Core2 MIC/MPU Module from M5 Core2 Bottom, then unscrew the grey bottom and remove internal battery. Store the screws, the back and battery somewhere in case you want to use the M5 Stack Core2 for another project later.

2. Affix the battery to the bottom case with double sided tape.

![1](image/bottom+battery.jpg?raw=true "1" )

3. Connect Battery to PCB connector on the back side of the PCB.

![2](image/bottom+pcb.png?raw=true "2" )

4. Insert the PCB into Bottom case. 
![AffixBattery](https://github.com/NightmareSyndrome/OSSM-M5-Remote/assets/131713378/392cc5ae-f787-404a-b128-40521d7e20d7)

5. Connect the M5 Core2 to the headers on the PCB and fasten with two 25mm M3 Bolts to Case.

![3](image/bottom+m5.jpg?raw=true "3" )

6. Put top on Remote and fasten with four M3 20mm Bolts to the Case.

![4](image/full-remote.jpg?raw=true "4" )

7. Install the Mx Cap and Encoder Knobs.

8. Charge the battery fully.

## Upload Software

To use this project, you currently have to write your own software. The i2c addresses of the components are provided on the board and schematic.