(
	rollout GIMS_V_to_Kam "GIMSV to Kam RRT"
	(
		dropdownlist tex_ext_drpdwn "Texture Extension" items:#(".tga", ".dds", ".bmp", ".jpg", ".png")
		
		fn GIMSV_to_Kam_mat m =
		(
			if (classof m) == Multimaterial do
			(
			for i = 1 to m.materialList.count do
			m.materialList[i] = GIMSV_to_Kam_mat m.materialList[i]
			return m
			)
			if (classof m) != EGIMS_V_Material do
			return m
			kam = GTA_Mtl()
			kam.color = color 255 255 255
			tex_name = m.name
			texname_length = tex_name.count
			texname_rm_first = texname_length - 30
			tex_ext_drpdwn_str = tex_ext_drpdwn.selected
			
			
			if texname_length > 31 do (tex_name = substring tex_name texname_rm_first -1)
			kam.colormap = Bitmaptexture fileName: (tex_name + tex_ext_drpdwn_str)

			kam
		)
				
		button convMatKam "Convert GIMSV to Kam mat (In Scene)"
		on convMatKam pressed do
		(	 
			for o in objects do
			(
				o.material = GIMSV_to_Kam_mat o.material
			)
		)
		
		label lab1 "Convert all materials to Kam's GTA Material"
		label lab2 "For much faster conversions"
	)--end rollout
	createDialog GIMS_V_to_Kam 230 120
)