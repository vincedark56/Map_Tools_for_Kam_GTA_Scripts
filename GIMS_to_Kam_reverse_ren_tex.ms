fn GIMSVtoKAM_RRT m = (
	if (classof m) == Multimaterial do (
		for i = 1 to m.materialList.count do
			m.materialList[i] = GIMSVtoKAM_RRT m.materialList[i]
		return m
	)
	if (classof m) != EGIMS_V_Material do
		return m
	kam = GTA_Mtl()
	kam.color = color 255 255 255
	tex_name = m.name
	texname_length = tex_name.count
	texname_rm_first = texname_length - 30

	if texname_length > 31 do (tex_name = substring tex_name texname_rm_first -1)
	kam.colormap = Bitmaptexture fileName: (tex_name + ".tga")

	kam
)

utility GIMS_V_to_KamUtl "GIMSV to Kam RRT" (
	button convMatKam "Convert GIMSV to Kam mat" width:140 align:#center
	on convMatKam pressed do ( 
		for o in objects do (
			o.material = GIMSVtoKAM_RRT o.material
		)
	)
)