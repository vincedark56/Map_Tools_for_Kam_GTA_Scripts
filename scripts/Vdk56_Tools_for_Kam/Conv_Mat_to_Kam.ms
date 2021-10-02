(
	rollout Conv_mat_to_Kam "Material Converter RRT"
	(
		dropdownlist tex_ext_drpdwn "Texture Extension" items:#(".tga", ".dds", ".bmp", ".jpg", ".png")
		radioButtons matType "Conv by type" labels:#("GIMS Evo V", "Standard Material")
		
		fn Conv_mat_to_Kam_mat m s =
		(
			if (classof m) == Multimaterial do
			(
			for i = 1 to m.materialList.count do
			m.materialList[i] = Conv_mat_to_Kam_mat m.materialList[i] s
			return m
			)
			if s == 1 and (classof m) != EGIMS_V_Material do
			return m
			
			if s == 2 and (classof m) != Standardmaterial do
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
				o.material = Conv_mat_to_Kam_mat o.material matType.state
			)
		)
		
		label lab1 "Convert all materials to Kam's GTA Material"
		label lab2 "For much faster conversions"
	)--end rollout
	createDialog Conv_mat_to_Kam 230 160
)