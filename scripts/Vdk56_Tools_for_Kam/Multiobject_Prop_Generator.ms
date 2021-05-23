(
	rollout mltobj_prop_rollout "Multiobject Prop Generator"
	(
		label lab1a "Generate Gbuffer ID (do it one time,"
		label lab1b "or whem add more objects)"
		button gen_gbuffer "Generate Gbuffer IDs (all objects in scene)"
		spinner start_id_spn "Start ID : " type:#integer range:[0,99999,5000]
		spinner lod_spn "LOD : " type:#integer range:[0,99999,300]
		edittext txd_name_box "TXD Name"
		button generate "Generate (for selected objects)"
		label lab2 "Generate object IDs with given .TXD name"
		label lab3 "Use bigger start ID each for new scene"
		on gen_gbuffer pressed do
		(
			for i = 1 to geometry.count do geometry[i].gbufferChannel = i
		)
		on generate pressed do
		(
			txd_name = txd_name_box.text
			LOD = lod_spn.value as string
			for i in selection do
			(
			start_id = start_id_spn.value - 1
			id = start_id + i.gbufferChannel
			setUserPropBuffer i ("ID=" + id as string + "\nTXD=" + txd_name + "\nSubObj=1\nView=" + LOD + "\nRenderEffect=0\nInterior=0")
			)
		)
	)--end rollout
	createDialog mltobj_prop_rollout 260 230
)
