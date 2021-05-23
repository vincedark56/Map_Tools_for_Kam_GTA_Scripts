

# Map Tools for Kam's GTA Scripts

It should be sufficient to make mush faster conversions from GTA IV+ RAGE Games to 3D Renderware Era.

## GIMSV to Kam material - Also removes the first symbols of big texture names

A 3ds Max's maxscript that converts GIMS V material to Kam's material for total convesions. Video on [Youtube](https://www.youtube.com/watch?v=nLBnJgdZql8).

I've worked on a script that converts GTAV materials to Kam's maxscript material for GTA III, GTA VC and GTA SA. You should have Kam's maxscript installed.

For big names this script basically takes the name of the of the GIMS V material specially **EGIMS_V_Material** and creates a **GTA_Mtl** of Kam's Max Scripts and copy the name of the GTAV's material model and creates a colormap with a bitmap file with the name of GTAV Material name from [GIMS Evo with GTA V support by 3Doomer](https://gta5-mods.com/tools/gims-evo-with-gta-v-support).

This script rename big texture names over 31 symbos removing the symbols in beginning of texture name preserving the name identification in the end of name.

Ex: **ap1_01_hangre_rust1lodap1_01_hangre_rust1alod.tga** will be renamed to **_rust1lodap1_01_hangre_rust1alod.tga**

Note: The indentification of **ap1_01_** will be missed, but you can fix it by choosing the right texture for the right .TXD used in map region of an .IDE in case there are different texture with same names after renamed, but have same texture names with reverse renaming is much less common than the old Standard way that is also used by [v2saconv by DK22Pac](https://github.com/DK22Pac/v2saconv) a tool that converts .YDR directly to .DFF for GTA San Andreas.

## Multiobject Prop Generator - Prop generator for Kam's map IO

With this spript you have just to press the button that generate Gbuffer IDs in the scene and choose the first start ID and the .TXD name (you can apply different .TXD names for selected objects without have issues with ID).
Now you can generate with the LOD custon values for selected objects.

## Rename Objects Names - Renames big GTA RAGE IV+ object names

This script is needed for GTA IV+ from RAGE Engine Games (or any game) to GTA Renderware 3D Era games for objects with 19+ characters in its names. Note that inside .IMG archive the limit is 20 characters, but for collision name files is 19.

## Compatibility:

Tested:

* 3ds Max 2009 (32 and 64 bits)
* 3ds Max 2012
* 3ds Max 2013 - Design

Should work:

* 3ds Max 2014
* 3ds Max 2015
* 3ds Max 2016
* 3ds Max 2017
* 3ds Max 2018
