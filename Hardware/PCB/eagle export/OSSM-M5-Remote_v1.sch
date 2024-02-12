<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="PEC12R-4230F-N0024" urn="urn:adsk.wipprod:fs.file:vf.sintJ6jKSe-mt22Th2tCDw">
<description>&lt;Encoders HORZ 24DET 24PULSE 30mm SHAFT W/O SW&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="PEC12R4017FN0024">
<description>&lt;b&gt;PEC12R-4017F-N0024-3&lt;/b&gt;&lt;br&gt;
</description>
<pad name="A1" x="0" y="0" drill="1.2" diameter="1.8"/>
<pad name="B1" x="5" y="0" drill="1.2" diameter="1.8"/>
<pad name="C1" x="2.5" y="0" drill="1.2" diameter="1.8"/>
<pad name="MH1" x="-3.1" y="7.5" drill="3.048" diameter="4.35"/>
<pad name="MH2" x="8.1" y="7.5" drill="3.048" diameter="4.35"/>
<text x="2.5" y="6.425" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="2.5" y="6.425" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.5" y1="0.8" x2="-3.7" y2="0.8" width="0.1" layer="21"/>
<wire x1="8.7" y1="0.8" x2="6.5" y2="0.8" width="0.1" layer="21"/>
<wire x1="-6.275" y1="15.2" x2="11.275" y2="15.2" width="0.1" layer="51" locked="yes"/>
<wire x1="11.275" y1="15.2" x2="11.275" y2="-2.35" width="0.1" layer="51"/>
<wire x1="11.275" y1="-2.35" x2="-6.275" y2="-2.35" width="0.1" layer="51"/>
<wire x1="-6.275" y1="-2.35" x2="-6.275" y2="15.2" width="0.1" layer="51"/>
<wire x1="-3.7" y1="10.5" x2="-3.7" y2="14.2" width="0.1" layer="21"/>
<wire x1="8.7" y1="10.25" x2="8.7" y2="14.2" width="0.1" layer="21"/>
<wire x1="-0.1" y1="-1.3" x2="0" y2="-1.3" width="0.2" layer="21" curve="180"/>
<wire x1="0" y1="-1.3" x2="-0.1" y2="-1.3" width="0.2" layer="21" curve="180"/>
<wire x1="-0.1" y1="-1.3" x2="0" y2="-1.3" width="0.2" layer="21" curve="180"/>
<pad name="P$1" x="0" y="14.5" drill="1.2"/>
<pad name="P$2" x="5" y="14.5" drill="1.2"/>
</package>
</packages>
<symbols>
<symbol name="PEC12R-4230F-N0024">
<wire x1="5.08" y1="2.54" x2="25.4" y2="2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="-7.62" x2="25.4" y2="2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="26.67" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="CHANNEL_A" x="0" y="0" length="middle"/>
<pin name="CHANNEL_B" x="0" y="-5.08" length="middle"/>
<pin name="COM" x="0" y="-2.54" length="middle"/>
<pin name="4" x="30.48" y="0" length="middle" rot="R180"/>
<pin name="5" x="30.48" y="-2.54" length="middle" rot="R180"/>
<pin name="P$1" x="10.16" y="7.62" length="middle" rot="R270"/>
<pin name="P$2" x="15.24" y="7.62" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PEC12R-4230F-N0024" prefix="U">
<description>&lt;b&gt;Encoders HORZ 24DET 24PULSE 30mm SHAFT W/O SW&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.bourns.com/docs/Product-Datasheets/PEC12R.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="PEC12R-4230F-N0024" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PEC12R4017FN0024">
<connects>
<connect gate="G$1" pin="4" pad="MH1"/>
<connect gate="G$1" pin="5" pad="MH2"/>
<connect gate="G$1" pin="CHANNEL_A" pad="A1"/>
<connect gate="G$1" pin="CHANNEL_B" pad="B1"/>
<connect gate="G$1" pin="COM" pad="C1"/>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="PEC12R-4230F-N0024" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/pec12r-4230f-n0024/bourns" constant="no"/>
<attribute name="DESCRIPTION" value="Encoders HORZ 24DET 24PULSE 30mm SHAFT W/O SW" constant="no"/>
<attribute name="HEIGHT" value="17.5mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Bourns" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="PEC12R-4230F-N0024" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="652-PEC12R-4230F-N24" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Bourns/PEC12R-4230F-N0024?qs=Zq5ylnUbLm5pfnEk8CuZjg%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Resistor">
<description>&lt;B&gt;Resistors, Potentiometers, TrimPot</description>
<packages>
<package name="RESC1005X40" urn="urn:adsk.eagle:footprint:16378540/2">
<description>Chip, 1.05 X 0.54 X 0.40 mm body
&lt;p&gt;Chip package with body size 1.05 X 0.54 X 0.40 mm&lt;/p&gt;</description>
<wire x1="0.55" y1="0.636" x2="-0.55" y2="0.636" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.636" x2="-0.55" y2="-0.636" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.3" x2="-0.55" y2="-0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="-0.3" x2="-0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="0.3" x2="0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="0.55" y1="0.3" x2="0.55" y2="-0.3" width="0.12" layer="51"/>
<smd name="1" x="-0.5075" y="0" dx="0.5351" dy="0.644" layer="1"/>
<smd name="2" x="0.5075" y="0" dx="0.5351" dy="0.644" layer="1"/>
<text x="0" y="1.271" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.271" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC1608X60" urn="urn:adsk.eagle:footprint:16378537/2">
<description>Chip, 1.60 X 0.82 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.82 X 0.60 mm&lt;/p&gt;</description>
<wire x1="0.85" y1="0.8009" x2="-0.85" y2="0.8009" width="0.127" layer="21"/>
<wire x1="0.85" y1="-0.8009" x2="-0.85" y2="-0.8009" width="0.127" layer="21"/>
<wire x1="0.85" y1="-0.475" x2="-0.85" y2="-0.475" width="0.12" layer="51"/>
<wire x1="-0.85" y1="-0.475" x2="-0.85" y2="0.475" width="0.12" layer="51"/>
<wire x1="-0.85" y1="0.475" x2="0.85" y2="0.475" width="0.12" layer="51"/>
<wire x1="0.85" y1="0.475" x2="0.85" y2="-0.475" width="0.12" layer="51"/>
<smd name="1" x="-0.8152" y="0" dx="0.7987" dy="0.9739" layer="1"/>
<smd name="2" x="0.8152" y="0" dx="0.7987" dy="0.9739" layer="1"/>
<text x="0" y="1.4359" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.4359" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC2012X65" urn="urn:adsk.eagle:footprint:16378532/2">
<description>Chip, 2.00 X 1.25 X 0.65 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 0.65 mm&lt;/p&gt;</description>
<wire x1="1.075" y1="1.0241" x2="-1.075" y2="1.0241" width="0.127" layer="21"/>
<wire x1="1.075" y1="-1.0241" x2="-1.075" y2="-1.0241" width="0.127" layer="21"/>
<wire x1="1.075" y1="-0.7" x2="-1.075" y2="-0.7" width="0.12" layer="51"/>
<wire x1="-1.075" y1="-0.7" x2="-1.075" y2="0.7" width="0.12" layer="51"/>
<wire x1="-1.075" y1="0.7" x2="1.075" y2="0.7" width="0.12" layer="51"/>
<wire x1="1.075" y1="0.7" x2="1.075" y2="-0.7" width="0.12" layer="51"/>
<smd name="1" x="-0.9195" y="0" dx="1.0312" dy="1.4202" layer="1"/>
<smd name="2" x="0.9195" y="0" dx="1.0312" dy="1.4202" layer="1"/>
<text x="0" y="1.6591" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.6591" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC3216X70" urn="urn:adsk.eagle:footprint:16378539/2">
<description>Chip, 3.20 X 1.60 X 0.70 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 0.70 mm&lt;/p&gt;</description>
<wire x1="1.7" y1="1.2217" x2="-1.7" y2="1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-1.2217" x2="-1.7" y2="-1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.9" x2="-1.7" y2="-0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.9" x2="-1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.9" x2="1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.9" x2="1.7" y2="-0.9" width="0.12" layer="51"/>
<smd name="1" x="-1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<smd name="2" x="1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<text x="0" y="1.8567" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.8567" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC3224X71" urn="urn:adsk.eagle:footprint:16378536/2">
<description>Chip, 3.20 X 2.49 X 0.71 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.49 X 0.71 mm&lt;/p&gt;</description>
<wire x1="1.675" y1="1.6441" x2="-1.675" y2="1.6441" width="0.127" layer="21"/>
<wire x1="1.675" y1="-1.6441" x2="-1.675" y2="-1.6441" width="0.127" layer="21"/>
<wire x1="1.675" y1="-1.32" x2="-1.675" y2="-1.32" width="0.12" layer="51"/>
<wire x1="-1.675" y1="-1.32" x2="-1.675" y2="1.32" width="0.12" layer="51"/>
<wire x1="-1.675" y1="1.32" x2="1.675" y2="1.32" width="0.12" layer="51"/>
<wire x1="1.675" y1="1.32" x2="1.675" y2="-1.32" width="0.12" layer="51"/>
<smd name="1" x="-1.4695" y="0" dx="1.1312" dy="2.6602" layer="1"/>
<smd name="2" x="1.4695" y="0" dx="1.1312" dy="2.6602" layer="1"/>
<text x="0" y="2.2791" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.2791" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC5025X71" urn="urn:adsk.eagle:footprint:16378538/2">
<description>Chip, 5.00 X 2.50 X 0.71 mm body
&lt;p&gt;Chip package with body size 5.00 X 2.50 X 0.71 mm&lt;/p&gt;</description>
<wire x1="2.575" y1="1.6491" x2="-2.575" y2="1.6491" width="0.127" layer="21"/>
<wire x1="2.575" y1="-1.6491" x2="-2.575" y2="-1.6491" width="0.127" layer="21"/>
<wire x1="2.575" y1="-1.325" x2="-2.575" y2="-1.325" width="0.12" layer="51"/>
<wire x1="-2.575" y1="-1.325" x2="-2.575" y2="1.325" width="0.12" layer="51"/>
<wire x1="-2.575" y1="1.325" x2="2.575" y2="1.325" width="0.12" layer="51"/>
<wire x1="2.575" y1="1.325" x2="2.575" y2="-1.325" width="0.12" layer="51"/>
<smd name="1" x="-2.3195" y="0" dx="1.2312" dy="2.6702" layer="1"/>
<smd name="2" x="2.3195" y="0" dx="1.2312" dy="2.6702" layer="1"/>
<text x="0" y="2.2841" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.2841" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC6332X71" urn="urn:adsk.eagle:footprint:16378533/2">
<description>Chip, 6.30 X 3.20 X 0.71 mm body
&lt;p&gt;Chip package with body size 6.30 X 3.20 X 0.71 mm&lt;/p&gt;</description>
<wire x1="3.225" y1="1.9991" x2="-3.225" y2="1.9991" width="0.127" layer="21"/>
<wire x1="3.225" y1="-1.9991" x2="-3.225" y2="-1.9991" width="0.127" layer="21"/>
<wire x1="3.225" y1="-1.675" x2="-3.225" y2="-1.675" width="0.12" layer="51"/>
<wire x1="-3.225" y1="-1.675" x2="-3.225" y2="1.675" width="0.12" layer="51"/>
<wire x1="-3.225" y1="1.675" x2="3.225" y2="1.675" width="0.12" layer="51"/>
<wire x1="3.225" y1="1.675" x2="3.225" y2="-1.675" width="0.12" layer="51"/>
<smd name="1" x="-2.9695" y="0" dx="1.2312" dy="3.3702" layer="1"/>
<smd name="2" x="2.9695" y="0" dx="1.2312" dy="3.3702" layer="1"/>
<text x="0" y="2.6341" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.6341" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESAD1176W63L850D250B" urn="urn:adsk.eagle:footprint:16378542/2">
<description>AXIAL Resistor, 11.76 mm pitch, 8.5 mm body length, 2.5 mm body diameter
&lt;p&gt;AXIAL Resistor package with 11.76 mm pitch, 0.63 mm lead diameter, 8.5 mm body length and 2.5 mm body diameter&lt;/p&gt;</description>
<wire x1="-4.25" y1="1.25" x2="-4.25" y2="-1.25" width="0.127" layer="21"/>
<wire x1="-4.25" y1="-1.25" x2="4.25" y2="-1.25" width="0.127" layer="21"/>
<wire x1="4.25" y1="-1.25" x2="4.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="4.25" y1="1.25" x2="-4.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="-4.25" y1="0" x2="-4.911" y2="0" width="0.127" layer="21"/>
<wire x1="4.25" y1="0" x2="4.911" y2="0" width="0.127" layer="21"/>
<wire x1="4.25" y1="-1.25" x2="-4.25" y2="-1.25" width="0.12" layer="51"/>
<wire x1="-4.25" y1="-1.25" x2="-4.25" y2="1.25" width="0.12" layer="51"/>
<wire x1="-4.25" y1="1.25" x2="4.25" y2="1.25" width="0.12" layer="51"/>
<wire x1="4.25" y1="1.25" x2="4.25" y2="-1.25" width="0.12" layer="51"/>
<pad name="1" x="-5.88" y="0" drill="0.83" diameter="1.43"/>
<pad name="2" x="5.88" y="0" drill="0.83" diameter="1.43"/>
<text x="0" y="1.885" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.885" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF3515" urn="urn:adsk.eagle:footprint:16378534/2">
<description>MELF, 3.50 mm length, 1.52 mm diameter
&lt;p&gt;MELF Resistor package with 3.50 mm length and 1.52 mm diameter&lt;/p&gt;</description>
<wire x1="1.105" y1="1.1825" x2="-1.105" y2="1.1825" width="0.127" layer="21"/>
<wire x1="-1.105" y1="-1.1825" x2="1.105" y2="-1.1825" width="0.127" layer="21"/>
<wire x1="1.85" y1="-0.8" x2="-1.85" y2="-0.8" width="0.12" layer="51"/>
<wire x1="-1.85" y1="-0.8" x2="-1.85" y2="0.8" width="0.12" layer="51"/>
<wire x1="-1.85" y1="0.8" x2="1.85" y2="0.8" width="0.12" layer="51"/>
<wire x1="1.85" y1="0.8" x2="1.85" y2="-0.8" width="0.12" layer="51"/>
<smd name="1" x="-1.6813" y="0" dx="1.1527" dy="1.7371" layer="1"/>
<smd name="2" x="1.6813" y="0" dx="1.1527" dy="1.7371" layer="1"/>
<text x="0" y="1.8175" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.8175" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF2014" urn="urn:adsk.eagle:footprint:16378535/2">
<description>MELF, 2.00 mm length, 1.40 mm diameter
&lt;p&gt;MELF Resistor package with 2.00 mm length and 1.40 mm diameter&lt;/p&gt;</description>
<wire x1="0.5189" y1="1.114" x2="-0.5189" y2="1.114" width="0.127" layer="21"/>
<wire x1="-0.5189" y1="-1.114" x2="0.5189" y2="-1.114" width="0.127" layer="21"/>
<wire x1="1.05" y1="-0.725" x2="-1.05" y2="-0.725" width="0.12" layer="51"/>
<wire x1="-1.05" y1="-0.725" x2="-1.05" y2="0.725" width="0.12" layer="51"/>
<wire x1="-1.05" y1="0.725" x2="1.05" y2="0.725" width="0.12" layer="51"/>
<wire x1="1.05" y1="0.725" x2="1.05" y2="-0.725" width="0.12" layer="51"/>
<smd name="1" x="-0.9918" y="0" dx="0.9456" dy="1.6" layer="1"/>
<smd name="2" x="0.9918" y="0" dx="0.9456" dy="1.6" layer="1"/>
<text x="0" y="1.749" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.749" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF5924" urn="urn:adsk.eagle:footprint:16378541/2">
<description>MELF, 5.90 mm length, 2.45 mm diameter
&lt;p&gt;MELF Resistor package with 5.90 mm length and 2.45 mm diameter&lt;/p&gt;</description>
<wire x1="2.1315" y1="1.639" x2="-2.1315" y2="1.639" width="0.127" layer="21"/>
<wire x1="-2.1315" y1="-1.639" x2="2.1315" y2="-1.639" width="0.127" layer="21"/>
<wire x1="3.05" y1="-1.25" x2="-3.05" y2="-1.25" width="0.12" layer="51"/>
<wire x1="-3.05" y1="-1.25" x2="-3.05" y2="1.25" width="0.12" layer="51"/>
<wire x1="-3.05" y1="1.25" x2="3.05" y2="1.25" width="0.12" layer="51"/>
<wire x1="3.05" y1="1.25" x2="3.05" y2="-1.25" width="0.12" layer="51"/>
<smd name="1" x="-2.7946" y="0" dx="1.3261" dy="2.65" layer="1"/>
<smd name="2" x="2.7946" y="0" dx="1.3261" dy="2.65" layer="1"/>
<text x="0" y="2.274" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.274" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF3218" urn="urn:adsk.eagle:footprint:16378531/2">
<description>MELF, 3.20 mm length, 1.80 mm diameter
&lt;p&gt;MELF Resistor package with 3.20 mm length and 1.80 mm diameter&lt;/p&gt;</description>
<wire x1="0.8815" y1="1.314" x2="-0.8815" y2="1.314" width="0.127" layer="21"/>
<wire x1="-0.8815" y1="-1.314" x2="0.8815" y2="-1.314" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.925" x2="-1.7" y2="-0.925" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.925" x2="-1.7" y2="0.925" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.925" x2="1.7" y2="0.925" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.925" x2="1.7" y2="-0.925" width="0.12" layer="51"/>
<smd name="1" x="-1.4946" y="0" dx="1.2261" dy="2" layer="1"/>
<smd name="2" x="1.4946" y="0" dx="1.2261" dy="2" layer="1"/>
<text x="0" y="1.949" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.949" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESAD724W46L381D178B" urn="urn:adsk.eagle:footprint:16378530/2">
<description>Axial Resistor, 7.24 mm pitch, 3.81 mm body length, 1.78 mm body diameter
&lt;p&gt;Axial Resistor package with 7.24 mm pitch (lead spacing), 0.46 mm lead diameter, 3.81 mm body length and 1.78 mm body diameter&lt;/p&gt;</description>
<wire x1="-2.16" y1="1.015" x2="-2.16" y2="-1.015" width="0.127" layer="21"/>
<wire x1="-2.16" y1="-1.015" x2="2.16" y2="-1.015" width="0.127" layer="21"/>
<wire x1="2.16" y1="-1.015" x2="2.16" y2="1.015" width="0.127" layer="21"/>
<wire x1="2.16" y1="1.015" x2="-2.16" y2="1.015" width="0.127" layer="21"/>
<wire x1="-2.16" y1="0" x2="-2.736" y2="0" width="0.127" layer="21"/>
<wire x1="2.16" y1="0" x2="2.736" y2="0" width="0.127" layer="21"/>
<wire x1="2.16" y1="-1.015" x2="-2.16" y2="-1.015" width="0.12" layer="51"/>
<wire x1="-2.16" y1="-1.015" x2="-2.16" y2="1.015" width="0.12" layer="51"/>
<wire x1="-2.16" y1="1.015" x2="2.16" y2="1.015" width="0.12" layer="51"/>
<wire x1="2.16" y1="1.015" x2="2.16" y2="-1.015" width="0.12" layer="51"/>
<pad name="1" x="-3.62" y="0" drill="0.66" diameter="1.26"/>
<pad name="2" x="3.62" y="0" drill="0.66" diameter="1.26"/>
<text x="0" y="1.65" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.65" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="RESC1005X40" urn="urn:adsk.eagle:package:16378568/2" type="model">
<description>Chip, 1.05 X 0.54 X 0.40 mm body
&lt;p&gt;Chip package with body size 1.05 X 0.54 X 0.40 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC1005X40"/>
</packageinstances>
</package3d>
<package3d name="RESC1608X60" urn="urn:adsk.eagle:package:16378565/2" type="model">
<description>Chip, 1.60 X 0.82 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.82 X 0.60 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC1608X60"/>
</packageinstances>
</package3d>
<package3d name="RESC2012X65" urn="urn:adsk.eagle:package:16378559/2" type="model">
<description>Chip, 2.00 X 1.25 X 0.65 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 0.65 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC2012X65"/>
</packageinstances>
</package3d>
<package3d name="RESC3216X70" urn="urn:adsk.eagle:package:16378566/2" type="model">
<description>Chip, 3.20 X 1.60 X 0.70 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 0.70 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC3216X70"/>
</packageinstances>
</package3d>
<package3d name="RESC3224X71" urn="urn:adsk.eagle:package:16378563/3" type="model">
<description>Chip, 3.20 X 2.49 X 0.71 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.49 X 0.71 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC3224X71"/>
</packageinstances>
</package3d>
<package3d name="RESC5025X71" urn="urn:adsk.eagle:package:16378564/2" type="model">
<description>Chip, 5.00 X 2.50 X 0.71 mm body
&lt;p&gt;Chip package with body size 5.00 X 2.50 X 0.71 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC5025X71"/>
</packageinstances>
</package3d>
<package3d name="RESC6332X71L" urn="urn:adsk.eagle:package:16378557/3" type="model">
<description>Chip, 6.30 X 3.20 X 0.71 mm body
&lt;p&gt;Chip package with body size 6.30 X 3.20 X 0.71 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC6332X71"/>
</packageinstances>
</package3d>
<package3d name="RESAD1176W63L850D250B" urn="urn:adsk.eagle:package:16378560/2" type="model">
<description>AXIAL Resistor, 11.76 mm pitch, 8.5 mm body length, 2.5 mm body diameter
&lt;p&gt;AXIAL Resistor package with 11.76 mm pitch, 0.63 mm lead diameter, 8.5 mm body length and 2.5 mm body diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESAD1176W63L850D250B"/>
</packageinstances>
</package3d>
<package3d name="RESMELF3515" urn="urn:adsk.eagle:package:16378562/2" type="model">
<description>MELF, 3.50 mm length, 1.52 mm diameter
&lt;p&gt;MELF Resistor package with 3.50 mm length and 1.52 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF3515"/>
</packageinstances>
</package3d>
<package3d name="RESMELF2014" urn="urn:adsk.eagle:package:16378558/2" type="model">
<description>MELF, 2.00 mm length, 1.40 mm diameter
&lt;p&gt;MELF Resistor package with 2.00 mm length and 1.40 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF2014"/>
</packageinstances>
</package3d>
<package3d name="RESMELF5924" urn="urn:adsk.eagle:package:16378567/3" type="model">
<description>MELF, 5.90 mm length, 2.45 mm diameter
&lt;p&gt;MELF Resistor package with 5.90 mm length and 2.45 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF5924"/>
</packageinstances>
</package3d>
<package3d name="RESMELF3218" urn="urn:adsk.eagle:package:16378556/2" type="model">
<description>MELF, 3.20 mm length, 1.80 mm diameter
&lt;p&gt;MELF Resistor package with 3.20 mm length and 1.80 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF3218"/>
</packageinstances>
</package3d>
<package3d name="RESAD724W46L381D178B" urn="urn:adsk.eagle:package:16378561/2" type="model">
<description>Axial Resistor, 7.24 mm pitch, 3.81 mm body length, 1.78 mm body diameter
&lt;p&gt;Axial Resistor package with 7.24 mm pitch (lead spacing), 0.46 mm lead diameter, 3.81 mm body length and 1.78 mm body diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESAD724W46L381D178B"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R" urn="urn:adsk.eagle:symbol:16378529/3">
<description>RESISTOR</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="0" y="2.54" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-5.08" size="1.778" layer="95" align="center">&gt;SPICEMODEL</text>
<text x="0" y="-2.54" size="1.778" layer="96" align="center">&gt;VALUE</text>
<text x="0" y="-7.62" size="1.778" layer="95" align="center">&gt;SPICEEXTRA</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:16378570/8" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor Fixed - Generic</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="CHIP-0402(1005-METRIC)" package="RESC1005X40">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378568/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0603(1608-METRIC)" package="RESC1608X60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378565/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0805(2012-METRIC)" package="RESC2012X65">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378559/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1206(3216-METRIC)" package="RESC3216X70">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378566/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1210(3225-METRIC)" package="RESC3224X71">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378563/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-2010(5025-METRIC)" package="RESC5025X71">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378564/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-2512(6332-METRIC)" package="RESC6332X71">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378557/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="AXIAL-11.7MM-PITCH" package="RESAD1176W63L850D250B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378560/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(3515-METRIC)" package="RESMELF3515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378562/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(2014-METRIC)" package="RESMELF2014">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378558/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(5924-METRIC)" package="RESMELF5924">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378567/3"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(3218-METRIC)" package="RESMELF3218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378556/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="AXIAL-7.2MM-PITCH" package="RESAD724W46L381D178B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378561/2"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistor" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMP" value="" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="RATING" value="" constant="no"/>
<attribute name="ROHS_COMPLIANT" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUB-CATEGORY" value="Fixed" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="Vampix_Bauteile" urn="urn:adsk.wipprod:fs.file:vf.c-_hq5QfQMG4RjI9as4Q4g">
<packages>
<package name="JST-PH-2.0MM_180DEGREES">
<pad name="P$1" x="0" y="0" drill="0.8" shape="square"/>
<pad name="P$2" x="2" y="0" drill="0.8" shape="square"/>
<wire x1="-1" y1="1" x2="3" y2="1" width="0.1524" layer="21"/>
<wire x1="3" y1="1" x2="3" y2="-1" width="0.1524" layer="21"/>
<wire x1="3" y1="-1" x2="-1" y2="-1" width="0.1524" layer="21"/>
<wire x1="-1" y1="-1" x2="-1" y2="1" width="0.1524" layer="21"/>
<text x="-1" y="2" size="0.4064" layer="21">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="JST-PH-2MM,180" library_version="18">
<pin name="P$1" x="0" y="0" visible="pad" length="short" function="dot"/>
<pin name="P$2" x="5.08" y="0" visible="pad" length="short" function="dot"/>
<wire x1="-2.54" y1="2.54" x2="7.62" y2="2.54" width="0.1524" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="-2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="JST-PH-2MM,180" library_version="59">
<gates>
<gate name="G$1" symbol="JST-PH-2MM,180" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JST-PH-2.0MM_180DEGREES">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="M5-Core" urn="urn:adsk.wipprod:fs.file:vf.jkb83DXBSqO5Xz6x70kBxg">
<description>&lt;b&gt;Pin Headers,Terminal blocks, D-Sub, Backplane, FFC/FPC, Socket</description>
<packages>
<package name="M5_CORE2">
<description>Double-row, 30-pin Receptacle Header (Female) Straight, 2.54 mm (0.10 in) row pitch, 2.54 mm (0.10 in) col pitch, 9.50 mm insulator length, 24.58 X 5.00 X 9.50 mm body
 &lt;p&gt;Double-row (2X15), 30-pin Receptacle Header (Female) Straight package with 2.54 mm (0.10 in) row pitch, 2.54 mm (0.10 in) col pitch, 0.64 mm lead width, 6.60 mm tail length and 9.50 mm insulator length  with overall size 24.58 X 5.00 X 9.50 mm, pin pattern - clockwise from top left&lt;/p&gt;</description>
<pad name="1" x="0" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="2" x="2.54" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="3" x="5.08" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="4" x="7.62" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="5" x="10.16" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="6" x="12.7" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="7" x="15.24" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="8" x="17.78" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="9" x="20.32" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="10" x="22.86" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="11" x="25.4" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="12" x="27.94" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="13" x="30.48" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="14" x="33.02" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="15" x="35.56" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="30" x="0" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="29" x="2.54" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="28" x="5.08" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="27" x="7.62" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="26" x="10.16" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="25" x="12.7" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="24" x="15.24" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="23" x="17.78" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="22" x="20.32" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="21" x="22.86" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="20" x="25.4" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="19" x="27.94" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="18" x="30.48" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="17" x="33.02" y="-2.54" drill="1.1051" diameter="1.7051"/>
<pad name="16" x="35.56" y="-2.54" drill="1.1051" diameter="1.7051"/>
<wire x1="-4.26" y1="-3.77" x2="-4.26" y2="1.23" width="0.12" layer="51"/>
<wire x1="-1.72" y1="1.23" x2="37.28" y2="1.23" width="0.12" layer="21"/>
<wire x1="-4.26" y1="1.23" x2="37.28" y2="1.23" width="0.12" layer="51"/>
<wire x1="37.28" y1="1.23" x2="37.28" y2="-3.77" width="0.12" layer="21"/>
<wire x1="37.28" y1="1.23" x2="37.28" y2="-3.77" width="0.12" layer="51"/>
<wire x1="37.28" y1="-3.77" x2="-1.72" y2="-3.77" width="0.12" layer="21"/>
<wire x1="37.28" y1="-3.77" x2="-4.26" y2="-3.77" width="0.12" layer="51"/>
<circle x="0" y="1.734" radius="0.25" width="0" layer="21"/>
<text x="0" y="2.619" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-4.405" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
<pad name="0" x="-2.54" y="0" drill="1.1051" diameter="1.7051"/>
<pad name="31" x="-2.54" y="-2.54" drill="1.1051" diameter="1.7051"/>
</package>
</packages>
<symbols>
<symbol name="M5_CORE2">
<wire x1="-6.35" y1="-15.24" x2="8.89" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-15.24" x2="8.89" y2="27.94" width="0.4064" layer="94"/>
<wire x1="8.89" y1="27.94" x2="-6.35" y2="27.94" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="27.94" x2="-6.35" y2="-15.24" width="0.4064" layer="94"/>
<text x="-6.35" y="26.035" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="NC$1" x="5.08" y="22.86" length="point" function="dot"/>
<pin name="NC$2" x="5.08" y="20.32" length="point" function="dot"/>
<pin name="NC$3" x="5.08" y="17.78" length="point" function="dot"/>
<pin name="G2" x="5.08" y="15.24" length="point" function="dot"/>
<pin name="G27" x="5.08" y="12.7" length="point" function="dot"/>
<pin name="G32" x="5.08" y="10.16" length="point" function="dot"/>
<pin name="G21" x="5.08" y="7.62" length="point" function="dot"/>
<pin name="G13" x="5.08" y="5.08" length="point" function="dot"/>
<pin name="G3" x="5.08" y="2.54" length="point" function="dot"/>
<pin name="G18" x="5.08" y="0" length="point" function="dot"/>
<pin name="G38" x="5.08" y="-2.54" length="point" function="dot"/>
<pin name="G23" x="5.08" y="-5.08" length="point" function="dot"/>
<pin name="GND1" x="5.08" y="-7.62" length="point" function="dot"/>
<pin name="GND2" x="5.08" y="-10.16" length="point" function="dot"/>
<pin name="GND3" x="5.08" y="-12.7" length="point" function="dot"/>
<pin name="G35" x="-2.54" y="-12.7" length="point" function="dot"/>
<pin name="G36" x="-2.54" y="-10.16" length="point" function="dot"/>
<pin name="RST" x="-2.54" y="-7.62" length="point" function="dot"/>
<pin name="G25" x="-2.54" y="-5.08" length="point" function="dot"/>
<pin name="G26" x="-2.54" y="-2.54" length="point" function="dot"/>
<pin name="3.3V" x="-2.54" y="0" length="point" function="dot"/>
<pin name="G1" x="-2.54" y="2.54" length="point" function="dot"/>
<pin name="G14" x="-2.54" y="5.08" length="point" function="dot"/>
<pin name="G22" x="-2.54" y="7.62" length="point" function="dot"/>
<pin name="G33" x="-2.54" y="10.16" length="point" function="dot"/>
<pin name="G19" x="-2.54" y="12.7" length="point" function="dot"/>
<pin name="G0" x="-2.54" y="15.24" length="point" function="dot"/>
<pin name="G34" x="-2.54" y="17.78" length="point" function="dot"/>
<pin name="5V" x="-2.54" y="20.32" length="point" function="dot"/>
<pin name="BAT" x="-2.54" y="22.86" length="point" function="dot"/>
<pin name="NC$5" x="-2.54" y="25.4" length="point" function="dot"/>
<pin name="NC$4" x="5.08" y="25.4" length="point" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M5_CORE2" library_version="12">
<gates>
<gate name="G$1" symbol="M5_CORE2" x="-73.66" y="15.24"/>
</gates>
<devices>
<device name="" package="M5_CORE2">
<connects>
<connect gate="G$1" pin="3.3V" pad="21"/>
<connect gate="G$1" pin="5V" pad="29"/>
<connect gate="G$1" pin="BAT" pad="30"/>
<connect gate="G$1" pin="G0" pad="27"/>
<connect gate="G$1" pin="G1" pad="22"/>
<connect gate="G$1" pin="G13" pad="8"/>
<connect gate="G$1" pin="G14" pad="23"/>
<connect gate="G$1" pin="G18" pad="10"/>
<connect gate="G$1" pin="G19" pad="26"/>
<connect gate="G$1" pin="G2" pad="4"/>
<connect gate="G$1" pin="G21" pad="7"/>
<connect gate="G$1" pin="G22" pad="24"/>
<connect gate="G$1" pin="G23" pad="12"/>
<connect gate="G$1" pin="G25" pad="19"/>
<connect gate="G$1" pin="G26" pad="20"/>
<connect gate="G$1" pin="G27" pad="5"/>
<connect gate="G$1" pin="G3" pad="9"/>
<connect gate="G$1" pin="G32" pad="6"/>
<connect gate="G$1" pin="G33" pad="25"/>
<connect gate="G$1" pin="G34" pad="28"/>
<connect gate="G$1" pin="G35" pad="16"/>
<connect gate="G$1" pin="G36" pad="17"/>
<connect gate="G$1" pin="G38" pad="11"/>
<connect gate="G$1" pin="GND1" pad="13"/>
<connect gate="G$1" pin="GND2" pad="14"/>
<connect gate="G$1" pin="GND3" pad="15"/>
<connect gate="G$1" pin="NC$1" pad="1"/>
<connect gate="G$1" pin="NC$2" pad="2"/>
<connect gate="G$1" pin="NC$3" pad="3"/>
<connect gate="G$1" pin="NC$4" pad="0"/>
<connect gate="G$1" pin="NC$5" pad="31"/>
<connect gate="G$1" pin="RST" pad="18"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="cherrymx" urn="urn:adsk.wipprod:fs.file:vf.PTY8AVzkQ6Wg254sa_t3mg">
<description>Cherry MX Keyswitch PCB footprints</description>
<packages>
<package name="CHERRY-MX-LED">
<description>Cherry MX series keyswitch footprint with additional holes for LED</description>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.127" layer="21"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-7.62" width="0.127" layer="21"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.127" layer="21"/>
<pad name="SW1" x="-3.81" y="2.54" drill="1.524" diameter="2.286"/>
<pad name="SW2" x="2.54" y="5.08" drill="1.524" diameter="2.286"/>
<pad name="P$3" x="-5.08" y="0" drill="1.7144" diameter="1.9304"/>
<pad name="P$4" x="5.08" y="0" drill="1.7144" diameter="1.9304"/>
<hole x="0" y="0" drill="4.064"/>
<pad name="LED+" x="-1.27" y="-5.08" drill="1.016" diameter="1.778"/>
<pad name="LED-" x="1.27" y="-5.08" drill="1.016" diameter="1.778"/>
<text x="-7.62" y="7.62" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="CHERRY-MX-LED">
<description>Schematic part for Cherry MX series keyswitch with additional pins for LED</description>
<text x="-5.334" y="5.588" size="1.4224" layer="95">CHERRY-MX-LED</text>
<pin name="SW1" x="-10.16" y="2.54" length="middle"/>
<pin name="SW2" x="-10.16" y="-2.54" length="middle"/>
<text x="-5.334" y="-7.366" size="1.778" layer="95">&gt;NAME</text>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="12.7" y2="-5.08" width="0.254" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="5.08" width="0.254" layer="94"/>
<wire x1="12.7" y1="5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<pin name="LED+" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="LED-" x="17.78" y="-2.54" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CHERRY-MX-LED">
<description>Cherry MX series keyswitch with LED</description>
<gates>
<gate name="G$1" symbol="CHERRY-MX-LED" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="CHERRY-MX-LED">
<connects>
<connect gate="G$1" pin="LED+" pad="LED+"/>
<connect gate="G$1" pin="LED-" pad="LED-"/>
<connect gate="G$1" pin="SW1" pad="SW1"/>
<connect gate="G$1" pin="SW2" pad="SW2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0.2" drill="0.3">
<clearance class="0" value="0.2"/>
</class>
<class number="1" name="Power" width="0.4" drill="0.6">
<clearance class="1" value="0.2"/>
</class>
</classes>
<parts>
<part name="U1" library="PEC12R-4230F-N0024" library_urn="urn:adsk.wipprod:fs.file:vf.sintJ6jKSe-mt22Th2tCDw" deviceset="PEC12R-4230F-N0024" device="" value="PEC12R">
<attribute name="ARROW_PART_NUMBER" value=""/>
<attribute name="DESCRIPTION" value=""/>
<attribute name="MANUFACTURER_PART_NUMBER" value=""/>
<attribute name="MOUSER_PART_NUMBER" value=""/>
</part>
<part name="U2" library="PEC12R-4230F-N0024" library_urn="urn:adsk.wipprod:fs.file:vf.sintJ6jKSe-mt22Th2tCDw" deviceset="PEC12R-4230F-N0024" device="" value="PEC12R"/>
<part name="U3" library="PEC12R-4230F-N0024" library_urn="urn:adsk.wipprod:fs.file:vf.sintJ6jKSe-mt22Th2tCDw" deviceset="PEC12R-4230F-N0024" device="" value="PEC12R"/>
<part name="U4" library="PEC12R-4230F-N0024" library_urn="urn:adsk.wipprod:fs.file:vf.sintJ6jKSe-mt22Th2tCDw" deviceset="PEC12R-4230F-N0024" device="" value="PEC12R"/>
<part name="R1" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="R2" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="R3" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="R4" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="R5" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="R6" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="R7" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="R10" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="U$3" library="Vampix_Bauteile" library_urn="urn:adsk.wipprod:fs.file:vf.c-_hq5QfQMG4RjI9as4Q4g" deviceset="JST-PH-2MM,180" device=""/>
<part name="R8" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="M5-CORE" library="M5-Core" library_urn="urn:adsk.wipprod:fs.file:vf.jkb83DXBSqO5Xz6x70kBxg" deviceset="M5_CORE2" device="" value="M5_CORE2"/>
<part name="U$4" library="cherrymx" library_urn="urn:adsk.wipprod:fs.file:vf.PTY8AVzkQ6Wg254sa_t3mg" deviceset="CHERRY-MX-LED" device=""/>
<part name="R9" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_"/>
<part name="R11" library="Resistor" deviceset="R" device="CHIP-1206(3216-METRIC)" package3d_urn="urn:adsk.eagle:package:16378566/2" technology="_" value="10k"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="40.64" y="101.6" smashed="yes" rot="MR0">
<attribute name="NAME" x="13.97" y="109.22" size="1.778" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="13.97" y="106.68" size="1.778" layer="96" rot="MR0" align="center-left"/>
</instance>
<instance part="U2" gate="G$1" x="40.64" y="68.58" smashed="yes" rot="MR0">
<attribute name="NAME" x="13.97" y="76.2" size="1.778" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="13.97" y="73.66" size="1.778" layer="96" rot="MR0" align="center-left"/>
</instance>
<instance part="U3" gate="G$1" x="177.8" y="78.74" smashed="yes">
<attribute name="NAME" x="204.47" y="86.36" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="204.47" y="83.82" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="U4" gate="G$1" x="180.34" y="109.22" smashed="yes">
<attribute name="NAME" x="207.01" y="116.84" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="207.01" y="114.3" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R1" gate="G$1" x="165.1" y="88.9" smashed="yes">
<attribute name="NAME" x="165.1" y="91.44" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="165.1" y="86.36" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R2" gate="G$1" x="45.72" y="101.6" smashed="yes">
<attribute name="NAME" x="45.72" y="104.14" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="45.72" y="99.06" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R3" gate="G$1" x="45.72" y="96.52" smashed="yes">
<attribute name="NAME" x="45.72" y="99.06" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="45.72" y="93.98" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R4" gate="G$1" x="45.72" y="68.58" smashed="yes">
<attribute name="NAME" x="45.72" y="71.12" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="45.72" y="66.04" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R5" gate="G$1" x="45.72" y="63.5" smashed="yes">
<attribute name="NAME" x="45.72" y="66.04" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="45.72" y="60.96" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R6" gate="G$1" x="165.1" y="104.14" smashed="yes">
<attribute name="NAME" x="165.1" y="106.68" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="165.1" y="101.6" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R7" gate="G$1" x="165.1" y="99.06" smashed="yes">
<attribute name="NAME" x="165.1" y="101.6" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="165.1" y="96.52" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R10" gate="G$1" x="165.1" y="83.82" smashed="yes">
<attribute name="NAME" x="165.1" y="86.36" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="165.1" y="81.28" size="1.778" layer="96" align="center"/>
</instance>
<instance part="U$3" gate="G$1" x="147.32" y="68.58" smashed="yes"/>
<instance part="R8" gate="G$1" x="60.96" y="144.78" smashed="yes">
<attribute name="NAME" x="60.96" y="147.32" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="60.96" y="142.24" size="1.778" layer="96" align="center"/>
</instance>
<instance part="M5-CORE" gate="G$1" x="109.22" y="83.82" smashed="yes">
<attribute name="NAME" x="102.87" y="109.855" size="1.778" layer="95"/>
<attribute name="VALUE" x="102.87" y="66.04" size="1.778" layer="96"/>
</instance>
<instance part="U$4" gate="G$1" x="83.82" y="134.62" smashed="yes"/>
<instance part="R9" gate="G$1" x="213.36" y="93.98" smashed="yes">
<attribute name="NAME" x="213.36" y="96.52" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="213.36" y="91.44" size="1.778" layer="96" align="center"/>
</instance>
<instance part="R11" gate="G$1" x="-17.78" y="76.2" smashed="yes">
<attribute name="NAME" x="-17.78" y="78.74" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="-17.78" y="73.66" size="1.778" layer="96" align="center"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="NEGATIV" class="1">
<segment>
<wire x1="114.3" y1="71.12" x2="124.46" y2="71.12" width="0.1524" layer="91" style="shortdash"/>
<wire x1="124.46" y1="71.12" x2="132.08" y2="71.12" width="0.1524" layer="91" style="shortdash"/>
<wire x1="139.7" y1="71.12" x2="139.7" y2="68.58" width="0.1524" layer="91" style="shortdash"/>
<wire x1="139.7" y1="68.58" x2="147.32" y2="68.58" width="0.1524" layer="91" style="shortdash"/>
<wire x1="124.46" y1="71.12" x2="124.46" y2="132.08" width="0.1524" layer="91" style="shortdash"/>
<wire x1="124.46" y1="132.08" x2="124.46" y2="144.78" width="0.1524" layer="91" style="shortdash"/>
<wire x1="124.46" y1="144.78" x2="91.44" y2="144.78" width="0.1524" layer="91" style="shortdash"/>
<wire x1="91.44" y1="144.78" x2="68.58" y2="144.78" width="0.1524" layer="91" style="shortdash"/>
<wire x1="68.58" y1="144.78" x2="66.04" y2="144.78" width="0.1524" layer="91" style="shortdash"/>
<wire x1="40.64" y1="99.06" x2="55.88" y2="99.06" width="0.1524" layer="91" style="shortdash"/>
<wire x1="55.88" y1="99.06" x2="91.44" y2="99.06" width="0.1524" layer="91" style="shortdash"/>
<wire x1="91.44" y1="99.06" x2="91.44" y2="144.78" width="0.1524" layer="91" style="shortdash"/>
<wire x1="40.64" y1="66.04" x2="55.88" y2="66.04" width="0.1524" layer="91" style="shortdash"/>
<wire x1="55.88" y1="66.04" x2="55.88" y2="99.06" width="0.1524" layer="91" style="shortdash"/>
<wire x1="177.8" y1="76.2" x2="132.08" y2="76.2" width="0.1524" layer="91" style="shortdash"/>
<wire x1="132.08" y1="76.2" x2="132.08" y2="71.12" width="0.1524" layer="91" style="shortdash"/>
<wire x1="180.34" y1="106.68" x2="132.08" y2="106.68" width="0.1524" layer="91" style="shortdash"/>
<wire x1="132.08" y1="106.68" x2="132.08" y2="76.2" width="0.1524" layer="91" style="shortdash"/>
<wire x1="101.6" y1="132.08" x2="124.46" y2="132.08" width="0.1524" layer="91" style="shortdash"/>
<pinref part="U$4" gate="G$1" pin="LED-"/>
<label x="106.68" y="144.78" size="1.778" layer="95"/>
<wire x1="129.54" y1="144.78" x2="124.46" y2="144.78" width="0.1524" layer="91" style="shortdash"/>
<wire x1="139.7" y1="71.12" x2="132.08" y2="71.12" width="0.1524" layer="91" style="shortdash"/>
<wire x1="129.54" y1="144.78" x2="129.54" y2="154.94" width="0.1524" layer="91" style="shortdash"/>
<wire x1="129.54" y1="154.94" x2="218.44" y2="154.94" width="0.1524" layer="91" style="shortdash"/>
<wire x1="218.44" y1="154.94" x2="218.44" y2="93.98" width="0.1524" layer="91" style="shortdash"/>
<wire x1="-22.86" y1="76.2" x2="-22.86" y2="154.94" width="0.1524" layer="91" style="shortdash"/>
<wire x1="-22.86" y1="154.94" x2="68.58" y2="154.94" width="0.1524" layer="91" style="shortdash"/>
<wire x1="68.58" y1="154.94" x2="68.58" y2="144.78" width="0.1524" layer="91" style="shortdash"/>
<pinref part="U1" gate="G$1" pin="COM"/>
<pinref part="U2" gate="G$1" pin="COM"/>
<pinref part="U3" gate="G$1" pin="COM"/>
<pinref part="U4" gate="G$1" pin="COM"/>
<pinref part="M5-CORE" gate="G$1" pin="GND3"/>
<junction x="124.46" y="71.12"/>
<junction x="132.08" y="71.12"/>
<junction x="124.46" y="132.08"/>
<junction x="124.46" y="144.78"/>
<junction x="91.44" y="144.78"/>
<junction x="68.58" y="144.78"/>
<junction x="55.88" y="99.06"/>
<junction x="132.08" y="76.2"/>
<pinref part="U$3" gate="G$1" pin="P$1"/>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="R9" gate="G$1" pin="2"/>
<pinref part="R11" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="40.64" y1="101.6" x2="40.64" y2="106.68" width="0.1524" layer="91"/>
<junction x="40.64" y="101.6"/>
<wire x1="40.64" y1="106.68" x2="68.58" y2="106.68" width="0.1524" layer="91"/>
<wire x1="68.58" y1="106.68" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<wire x1="68.58" y1="81.28" x2="106.68" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="CHANNEL_A"/>
<pinref part="M5-CORE" gate="G$1" pin="G26"/>
<pinref part="R2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="40.64" y1="78.74" x2="40.64" y2="96.52" width="0.1524" layer="91"/>
<wire x1="106.68" y1="78.74" x2="40.64" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="CHANNEL_B"/>
<junction x="40.64" y="96.52"/>
<pinref part="M5-CORE" gate="G$1" pin="G25"/>
<pinref part="R3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="106.68" y1="88.9" x2="43.18" y2="88.9" width="0.1524" layer="91"/>
<wire x1="43.18" y1="88.9" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
<wire x1="43.18" y1="68.58" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
<junction x="40.64" y="68.58"/>
<pinref part="U2" gate="G$1" pin="CHANNEL_A"/>
<pinref part="M5-CORE" gate="G$1" pin="G14"/>
<pinref part="R4" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="114.3" y1="88.9" x2="129.54" y2="88.9" width="0.1524" layer="91"/>
<wire x1="129.54" y1="88.9" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
<wire x1="129.54" y1="53.34" x2="40.64" y2="53.34" width="0.1524" layer="91"/>
<wire x1="40.64" y1="53.34" x2="40.64" y2="63.5" width="0.1524" layer="91"/>
<junction x="40.64" y="63.5"/>
<pinref part="U2" gate="G$1" pin="CHANNEL_B"/>
<pinref part="M5-CORE" gate="G$1" pin="G13"/>
<pinref part="R5" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="114.3" y1="96.52" x2="121.92" y2="96.52" width="0.1524" layer="91"/>
<wire x1="121.92" y1="96.52" x2="121.92" y2="111.76" width="0.1524" layer="91"/>
<wire x1="121.92" y1="111.76" x2="180.34" y2="111.76" width="0.1524" layer="91"/>
<wire x1="180.34" y1="111.76" x2="180.34" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="CHANNEL_A"/>
<wire x1="180.34" y1="109.22" x2="170.18" y2="104.14" width="0.1524" layer="91"/>
<junction x="180.34" y="109.22"/>
<pinref part="M5-CORE" gate="G$1" pin="G27"/>
<pinref part="R6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="114.3" y1="93.98" x2="177.8" y2="93.98" width="0.1524" layer="91"/>
<wire x1="177.8" y1="93.98" x2="177.8" y2="78.74" width="0.1524" layer="91"/>
<wire x1="177.8" y1="78.74" x2="171.026665625" y2="88.9" width="0.1524" layer="91"/>
<wire x1="171.026665625" y1="88.9" x2="170.18" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="CHANNEL_A"/>
<junction x="177.8" y="78.74"/>
<pinref part="M5-CORE" gate="G$1" pin="G32"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="177.8" y1="73.66" x2="177.8" y2="71.12" width="0.1524" layer="91"/>
<wire x1="177.8" y1="73.66" x2="171.026665625" y2="83.82" width="0.1524" layer="91"/>
<wire x1="171.026665625" y1="83.82" x2="170.18" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="CHANNEL_B"/>
<wire x1="157.48" y1="83.82" x2="157.48" y2="71.12" width="0.1524" layer="91"/>
<wire x1="157.48" y1="71.12" x2="177.8" y2="71.12" width="0.1524" layer="91"/>
<wire x1="106.68" y1="93.98" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
<wire x1="99.06" y1="93.98" x2="99.06" y2="63.5" width="0.1524" layer="91"/>
<wire x1="99.06" y1="63.5" x2="137.16" y2="63.5" width="0.1524" layer="91"/>
<wire x1="137.16" y1="63.5" x2="137.16" y2="83.82" width="0.1524" layer="91"/>
<wire x1="137.16" y1="83.82" x2="157.48" y2="83.82" width="0.1524" layer="91"/>
<pinref part="M5-CORE" gate="G$1" pin="G33"/>
<junction x="177.8" y="73.66"/>
<pinref part="R10" gate="G$1" pin="2"/>
</segment>
</net>
<net name="+5V" class="1">
<segment>
<wire x1="160.02" y1="104.14" x2="160.02" y2="99.06" width="0.1524" layer="91" style="dashdot"/>
<wire x1="160.02" y1="99.06" x2="160.02" y2="96.52" width="0.1524" layer="91" style="dashdot"/>
<wire x1="160.02" y1="96.52" x2="160.02" y2="88.9" width="0.1524" layer="91" style="dashdot"/>
<wire x1="160.02" y1="88.9" x2="160.02" y2="83.82" width="0.1524" layer="91" style="dashdot"/>
<wire x1="160.02" y1="96.52" x2="154.94" y2="96.52" width="0.1524" layer="91" style="dashdot"/>
<wire x1="154.94" y1="96.52" x2="137.16" y2="96.52" width="0.1524" layer="91" style="dashdot"/>
<wire x1="137.16" y1="96.52" x2="137.16" y2="121.92" width="0.1524" layer="91" style="dashdot"/>
<wire x1="137.16" y1="121.92" x2="76.2" y2="121.92" width="0.1524" layer="91" style="dashdot"/>
<wire x1="50.8" y1="101.6" x2="50.8" y2="96.52" width="0.1524" layer="91" style="dashdot"/>
<wire x1="50.8" y1="96.52" x2="76.2" y2="96.52" width="0.1524" layer="91" style="dashdot"/>
<wire x1="76.2" y1="121.92" x2="76.2" y2="119.38" width="0.1524" layer="91" style="dashdot"/>
<wire x1="76.2" y1="119.38" x2="76.2" y2="104.14" width="0.1524" layer="91" style="dashdot"/>
<wire x1="76.2" y1="104.14" x2="76.2" y2="96.52" width="0.1524" layer="91" style="dashdot"/>
<wire x1="50.8" y1="96.52" x2="50.8" y2="68.58" width="0.1524" layer="91" style="dashdot"/>
<wire x1="50.8" y1="68.58" x2="50.8" y2="63.5" width="0.1524" layer="91" style="dashdot"/>
<wire x1="73.66" y1="132.08" x2="73.66" y2="119.38" width="0.1524" layer="91" style="dashdot"/>
<wire x1="73.66" y1="119.38" x2="76.2" y2="119.38" width="0.1524" layer="91" style="dashdot"/>
<pinref part="U$4" gate="G$1" pin="SW2"/>
<wire x1="73.66" y1="119.38" x2="30.48" y2="119.38" width="0.1524" layer="91" style="dashdot"/>
<wire x1="30.48" y1="109.22" x2="30.48" y2="111.76" width="0.1524" layer="91" style="dashdot"/>
<pinref part="U1" gate="G$1" pin="P$1"/>
<wire x1="30.48" y1="111.76" x2="30.48" y2="119.38" width="0.1524" layer="91" style="dashdot"/>
<wire x1="106.68" y1="104.14" x2="76.2" y2="104.14" width="0.1524" layer="91" style="dashdot"/>
<pinref part="U4" gate="G$1" pin="P$1"/>
<wire x1="190.5" y1="116.84" x2="185.42" y2="116.84" width="0.1524" layer="91" style="dashdot"/>
<wire x1="185.42" y1="116.84" x2="154.94" y2="116.84" width="0.1524" layer="91" style="dashdot"/>
<wire x1="154.94" y1="116.84" x2="154.94" y2="96.52" width="0.1524" layer="91" style="dashdot"/>
<junction x="160.02" y="99.06"/>
<junction x="160.02" y="96.52"/>
<junction x="160.02" y="88.9"/>
<junction x="154.94" y="96.52"/>
<junction x="50.8" y="96.52"/>
<junction x="76.2" y="119.38"/>
<junction x="76.2" y="104.14"/>
<junction x="50.8" y="68.58"/>
<junction x="73.66" y="119.38"/>
<pinref part="M5-CORE" gate="G$1" pin="5V"/>
<junction x="185.42" y="116.84"/>
<wire x1="185.42" y1="116.84" x2="185.42" y2="86.36" width="0.1524" layer="91"/>
<wire x1="185.42" y1="86.36" x2="187.96" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="P$1"/>
<junction x="30.48" y="111.76"/>
<wire x1="30.48" y1="111.76" x2="33.02" y2="111.76" width="0.1524" layer="91"/>
<wire x1="33.02" y1="111.76" x2="33.02" y2="76.2" width="0.1524" layer="91"/>
<wire x1="33.02" y1="76.2" x2="30.48" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="P$1"/>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="R10" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<wire x1="2.54" y1="76.2" x2="2.54" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="76.2" x2="-2.54" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="76.2" x2="2.54" y2="76.2" width="0.1524" layer="91"/>
<wire x1="25.4" y1="109.22" x2="20.32" y2="109.22" width="0.1524" layer="91"/>
<wire x1="20.32" y1="109.22" x2="-2.54" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="109.22" x2="-2.54" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="P$2"/>
<junction x="-2.54" y="76.2"/>
<wire x1="2.54" y1="58.42" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
<wire x1="86.36" y1="58.42" x2="86.36" y2="73.66" width="0.1524" layer="91"/>
<wire x1="86.36" y1="73.66" x2="106.68" y2="73.66" width="0.1524" layer="91"/>
<pinref part="M5-CORE" gate="G$1" pin="G36"/>
<junction x="20.32" y="109.22"/>
<wire x1="20.32" y1="109.22" x2="20.32" y2="76.2" width="0.1524" layer="91"/>
<wire x1="20.32" y1="76.2" x2="25.4" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="P$2"/>
<pinref part="R11" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="200.66" y1="91.44" x2="200.66" y2="93.98" width="0.1524" layer="91"/>
<wire x1="200.66" y1="93.98" x2="203.2" y2="93.98" width="0.1524" layer="91"/>
<wire x1="203.2" y1="93.98" x2="208.28" y2="93.98" width="0.1524" layer="91"/>
<wire x1="195.58" y1="116.84" x2="198.12" y2="116.84" width="0.1524" layer="91"/>
<wire x1="198.12" y1="116.84" x2="203.2" y2="116.84" width="0.1524" layer="91"/>
<wire x1="203.2" y1="116.84" x2="203.2" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="P$2"/>
<junction x="203.2" y="93.98"/>
<wire x1="106.68" y1="101.6" x2="88.9" y2="101.6" width="0.1524" layer="91"/>
<wire x1="88.9" y1="101.6" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
<wire x1="88.9" y1="58.42" x2="213.36" y2="58.42" width="0.1524" layer="91"/>
<wire x1="213.36" y1="58.42" x2="213.36" y2="91.44" width="0.1524" layer="91"/>
<wire x1="213.36" y1="91.44" x2="200.66" y2="91.44" width="0.1524" layer="91"/>
<pinref part="M5-CORE" gate="G$1" pin="G34"/>
<junction x="198.12" y="116.84"/>
<wire x1="198.12" y1="116.84" x2="198.12" y2="86.36" width="0.1524" layer="91"/>
<wire x1="198.12" y1="86.36" x2="193.04" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="P$2"/>
<pinref part="R9" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="SW1"/>
<wire x1="55.88" y1="144.78" x2="55.88" y2="137.16" width="0.1524" layer="91"/>
<wire x1="55.88" y1="137.16" x2="60.96" y2="137.16" width="0.1524" layer="91"/>
<wire x1="60.96" y1="137.16" x2="73.66" y2="137.16" width="0.1524" layer="91"/>
<junction x="60.96" y="137.16"/>
<wire x1="60.96" y1="137.16" x2="60.96" y2="71.12" width="0.1524" layer="91"/>
<wire x1="106.68" y1="71.12" x2="60.96" y2="71.12" width="0.1524" layer="91"/>
<pinref part="M5-CORE" gate="G$1" pin="G35"/>
<pinref part="R8" gate="G$1" pin="1"/>
</segment>
</net>
<net name="BAT+" class="1">
<segment>
<wire x1="106.68" y1="106.68" x2="99.06" y2="106.68" width="0.1524" layer="91" style="longdash"/>
<wire x1="99.06" y1="106.68" x2="99.06" y2="116.84" width="0.1524" layer="91" style="longdash"/>
<wire x1="99.06" y1="116.84" x2="152.4" y2="116.84" width="0.15" layer="91" style="longdash"/>
<wire x1="152.4" y1="116.84" x2="152.4" y2="68.58" width="0.1524" layer="91" style="longdash"/>
<pinref part="M5-CORE" gate="G$1" pin="BAT"/>
<pinref part="U$3" gate="G$1" pin="P$2"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="180.34" y1="104.14" x2="180.34" y2="96.52" width="0.1524" layer="91"/>
<wire x1="172.72" y1="96.52" x2="180.34" y2="96.52" width="0.1524" layer="91"/>
<wire x1="172.72" y1="96.52" x2="172.72" y2="119.38" width="0.1524" layer="91"/>
<wire x1="172.72" y1="119.38" x2="93.98" y2="119.38" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="CHANNEL_B"/>
<wire x1="180.34" y1="104.14" x2="170.18" y2="99.06" width="0.1524" layer="91"/>
<junction x="180.34" y="104.14"/>
<wire x1="93.98" y1="119.38" x2="93.98" y2="96.52" width="0.1524" layer="91"/>
<wire x1="93.98" y1="96.52" x2="106.68" y2="96.52" width="0.1524" layer="91"/>
<pinref part="M5-CORE" gate="G$1" pin="G19"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="106.68" y1="83.82" x2="96.52" y2="83.82" width="0.1524" layer="91"/>
<wire x1="96.52" y1="83.82" x2="96.52" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="LED+"/>
<wire x1="101.6" y1="137.16" x2="111.76" y2="137.16" width="0.1524" layer="91"/>
<wire x1="111.76" y1="137.16" x2="111.76" y2="124.46" width="0.1524" layer="91"/>
<wire x1="111.76" y1="124.46" x2="96.52" y2="124.46" width="0.1524" layer="91"/>
<pinref part="M5-CORE" gate="G$1" pin="3.3V"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="113,1,165.1,90.0659,R1,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
<note version="8.5" severity="warning">
Since Version 8.5, EAGLE supports locking for holes, vias, wires and polygons. 
The locking property on all objects of these types will not be understood in this version. 
</note>
</compatibility>
</eagle>
