fn GIMSVtoKAM m = (
	if (classof m) == Multimaterial do (
		for i = 1 to m.materialList.count do
			m.materialList[i] = GIMSVtoKAM m.materialList[i]
		return m
	)
	if (classof m) != EGIMS_V_Material do
		return m
	kam = GTA_Mtl()
	kam.color = color 255 255 255
	tex_name = m.name
	tex_name_sub = substring tex_name 1 31
	if tex_name.count > 31 do (tex_name = tex_name_sub)
	kam.colormap = Bitmaptexture fileName: (tex_name + ".tga")

	kam
)

utility GIMS_V_to_KamUtl "GIMSV to Kam" (
	button convMatKam "Convert GIMSV to Kam mat" width:140 align:#center
	on convMatKam pressed do ( 
		for o in objects do (
			o.material = GIMSVtoKAM o.material
		)
	)
)