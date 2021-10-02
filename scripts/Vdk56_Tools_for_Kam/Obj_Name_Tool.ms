(
	rollout Obj_Name_Tool "Object Name Tool"
	(
		label lab1 "GTA3 Era games has 19 col name length limit"
		button printExceeds "Print Exceed Object Names" width:180 align:#center
		button renameSelected "Rename Selected Objects" width:180 height:40 align:#center
		
		on printExceeds pressed do
		(
			for o in objects do
			(
				local nameLength = o.name.count
				if nameLength > 19 do print o.name
			)
		)
		
		on renameSelected pressed do
		(
			for s in selection do
			(
				objName = s.name
				local nameLength = s.name.count
				local objName_rm_first = nameLength - 18
				if nameLength > 19 do
				(
					renamed = "Model Renamed: " + objName
					print renamed
					s.name = substring objName objName_rm_first -1
				)
			)
		)
	)--end rolloud
	createDialog Obj_Name_Tool 230 120
)