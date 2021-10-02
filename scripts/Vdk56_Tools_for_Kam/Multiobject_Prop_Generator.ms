(
	rollout mltobj_prop_rollout "Multiobject Prop Generator"
	(
		groupBox grp2 "Copy selected objs parent name to TXD Name" pos:[8,96] width:240 height:88
		checkbox remFirst "Remove First:" pos:[16,112] width:88 height:16
		button gen_gbuffer "Generate Gbuffer" pos:[104,32] width:136 height:32 toolTip:"For all objects in scene"
		label lbl1 "Generate IDs for each object in scene for Start ID" pos:[16,24] width:80 height:64
		groupBox grp3 "Important" pos:[8,8] width:240 height:80
		button copyObjName "Copy Name" pos:[16,160] width:224 height:16
		spinner remove_first_spn "" pos:[104,112] width:40 height:16 range:[0,25,0] type:#integer
		spinner remove_last_spn "" pos:[104,136] width:40 height:16 range:[0,25,0] type:#integer
		checkbox remLast "Remove Last:" pos:[16,136] width:88 height:16
		label lbl4 "Digits" pos:[152,112] width:72 height:16
		label lbl5 "Digits" pos:[152,136] width:72 height:16
		spinner start_id_spn "Stard ID:" pos:[16,192] width:120 height:16 range:[0,99999,5000] type:#integer
		spinner lod_spn "LOD:" pos:[32,216] width:104 height:16 range:[0,99999,300] type:#integer
		editText txd_name_box "TXD Name:" pos:[8,240] width:240 height:16
		button generate "Generate (for selected objects)" pos:[8,264] width:240 height:64
		on gen_gbuffer pressed do
		(
			for i = 1 to geometry.count do geometry[i].gbufferChannel = i
		)
		on copyObjName pressed do
		(
			parentNameArr = #()
			for s in selection do
			(
				if isValidNode s.parent then
				(
					appendIfUnique parentNameArr s.parent
					if parentNameArr.count > 1 then
					(
						messagebox "Your selection as more than one parent"
					) else
					(
						parentName = parentNameArr[1].name
						objParentSize = parentName.count
						
						if remFirst.state==true then
						(
							if remove_first_spn.value >= parentName.count then 
							(
								messagebox "Not enough char on TXD Name"
							)
							parentName = (substring parentName (remove_first_spn.value + 1) -1) 
						)
					)
					
					if remLast.state==true then
					(
						if remove_last_spn.value >= parentName.count then 
						(
							messagebox "Not enough char on TXD Name"
						)
						parentName = (substring parentName 1 (parentName.count - remove_last_spn.value))
					)
					
					txd_name_box.text = parentName
					
				) else
				(
					messagebox "No parent object in selection"
				)
			)
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
	createDialog mltobj_prop_rollout 256 336
)
