(
	rollout offset_ids_ide_diag "KAM IDE ID Offset"
	(
		spinner offset_spn "" pos:[40,40] width:166 height:16 range:[0,99999,1] type:#integer scale:1
		label lbl1 "Enter the ID offset value in the box" pos:[32,24] width:184 height:16
		label lbl2 "Choose the objects" pos:[72,8] width:96 height:16
		button btn1 "Change" pos:[40,72] width:160 height:40
		
		on btn1 pressed do
		(
			for obj in selection do
			(
				id_value = getUserProp obj "ID"
				id_offset_calc = id_value + offset_spn.value
				setUserProp obj "ID" id_offset_calc
			)
		)
	)--end rollout
	createDialog offset_ids_ide_diag 248 136
)