(
	rollout tex_list_exp "Rename Big Object Names"
	(
		button export_btn "Export tex list (selected)"
		on export_btn pressed do
		(
			for i in selection do 
			(
				if i.material == Multimaterial do
				(
					for m = 1 to i.material.materialList[m] do
					format  i.material.materialList[m].colormap.filename
				)
				if i.material == GTA_Mtl() do
				(
					format  i.material.colormap.filename
				)
			)
		)
	)
	createDialog tex_list_exp 230 120
)