# GIMS Evo with GTAV support materal to Kam's material converter
A 3ds Max's maxscript that converts GIMS V material to Kam's material for total convesions. Video on [Youtube](https://www.youtube.com/watch?v=nLBnJgdZql8).

I've worked on a script that converts GTAV materials to Kam's maxscript material for GTA III, GTA VC and GTA SA. You should have Kam's maxscript installed.

This script basically takes the name of the of the GIMS V material specially **EGIMS_V_Material** and creates a **GTA_Mtl** of Kam's Max Scripts and copy the name of the GTAV's material model and creates a colormap with a bitmap file with the name of GTAV Material name from [GIMS Evo with GTA V support by 3Doomer](https://gta5-mods.com/tools/gims-evo-with-gta-v-support).

It should be sufficient to make mush faster conversions.

## GIMS_to_Kam_reverse_ren_tex - Removing the first symbols of big texture names

This script rename big texture names over 31 symbos removing the symbols in beginning of texture name preserving the name identification in the end of name.

Ex: **ap1_01_hangre_rust1lodap1_01_hangre_rust1alod.tga** will be renamed to **_rust1lodap1_01_hangre_rust1alod.tga**

Note: The indentification of **ap1_01_** will be missed, but you can fix it by choosing the right texture for the right .TXD used in map region of an .IDE in case there are different texture with same names after renamed, but have same texture names with reverse renaming is much less common than the old Standard way that is also used by [v2saconv by DK22Pac](https://github.com/DK22Pac/v2saconv) a tool that converts .YDR directly to .DFF for GTA San Andreas.

## GIMSV_to_Kam.ms - Standard Texture renamer (not recommended)

This script rename big texture names removing  symbos after 31 symbols that is the limit of .dff in GTA Renderware series.

Ex: **ap1_01_hangre_rust1lodap1_01_hangre_rust1alod.tga** will be renamed to **ap1_01_hangre_rust1lodap1_01_ha.tga**

## Do not place in scripts/Startup folder of 3ds Max

A problem maybe caused by loading order the GTA Material script don't work and max gives an error by undefined function.

## Compatibility:

Tested:

* 3ds Max 2016
* 3ds Max 2009 (32 and 64 bits)

Should work:

* 3ds Max 2018
* 3ds Max 2017
* 3ds Max 2015
* 3ds Max 2014
* 3ds Max 2013
