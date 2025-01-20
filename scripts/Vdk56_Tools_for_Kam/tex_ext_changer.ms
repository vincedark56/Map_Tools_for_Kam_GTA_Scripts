(
	rollout Tex_Ext_Changer "Texture Ext Changer"
	(
		dropdownlist old_tex_ext_drpdwn "Old Tex Extension" items:#(".tga", ".dds", ".bmp", ".jpg", ".png")
		dropdownlist new_tex_ext_drpdwn "New Tex Extension" items:#(".tga", ".dds", ".bmp", ".jpg", ".png")
		button change_ext_btn "Change (In Scene)"
		
		on change_ext_btn pressed do
		(
			mBitmaps = getClassInstances BitmapTexture

			for m in mBitmaps do 
			(
				-- for every bitmap texture in the scene
				if (isProperty m #filename) then 
				(
					-- that has a #filename property
					filetype = getFilenameType m.filename
					if m.filename != "" and old_tex_ext_drpdwn.selected == filetype then m.filename = (getFilenamePath  m.filename + getFilenameFile m.filename + getFilenameType new_tex_ext_drpdwn.selected)
				)
			)
		)
	)
	createDialog Tex_Ext_Changer 230 160
)