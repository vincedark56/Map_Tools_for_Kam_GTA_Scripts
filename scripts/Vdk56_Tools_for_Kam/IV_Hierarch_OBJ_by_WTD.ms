(
	rollout iv_hierarch_obj_by_wtd_rollout "IV Hierarch OBJ by WTD"
	(
		label lab1 "This script group the objects by WTD names"
		group ""
		(
			label lab2 "The children names has 'WTD=' preffix"
			label lab3 "to avoid object name conflicts"
			button imp_ivide "Import GTAIV .IDE" width:170 height:60
		)
		
		struct Tokenizer
		(
			tokens = #(),
		
			fn SetString str=
			(
				tokens = filterString str " ,"
			),
			fn ReadToken=
			(
				if tokens.count > 0 then
				(
					local tok = tokens[1]
					deleteItem tokens 1
					tok
				) else
				(
					undefined
				)
			)
		)
		
	
		
		on imp_ivide pressed do
		(
			global ivide_name = getOpenFileName caption:"Open IDE file" types:"IDE File (*.ide)|*.ide|"
			(
				if ivide_name != undefined do
				(
					global in_ivide = openFile ivide_name
				
					while not (eof in_ivide) do
					(
						local lineTokenizer = Tokenizer()
						lineTokenizer.SetString (readLine in_ivide)
					
						local idToken = lineTokenizer.ReadToken()
						if idToken != undefined do
						(
							case idToken of
							(
								"objs":
								(
									while not (eof in_ivide) do
									(
										lineTokenizer.SetString (readLine in_ivide)
										local objName = lineTokenizer.ReadToken()
										local wtdName = lineTokenizer.ReadToken()
	
										if getnodebyname objName ignoreCase:true != undefined then
										(
											local objNode = getnodebyname objName
											local dummyName = "WTD=" + wtdName
											if getnodebyname dummyName == undefined then
											(
												Dummy pos:[0,0,0] name: dummyName
												
												objNode.parent = getnodebyname dummyName
											) else
											(
												objNode.parent = getnodebyname dummyName
											)
										)
										if objName == "end" then exit
									)
								)
								"tobj":
								(
									while not (eof in_ivide) do
									(
										lineTokenizer.SetString (readLine in_ivide)
										local objName = lineTokenizer.ReadToken()
										local wtdName = lineTokenizer.ReadToken()
	
										if getnodebyname objName ignoreCase:true != undefined then
										(
											local objNode = getnodebyname objName
											local dummyName = "WTD=" + wtdName
											if getnodebyname dummyName == undefined then
											(
												Dummy pos:[0,0,0] name: dummyName
												
												objNode.parent = getnodebyname dummyName
											) else
											(
												objNode.parent = getnodebyname dummyName
											)
										)
										if objName == "end" then exit
									)
								)
								"anim":
								(
									while not (eof in_ivide) do
									(
										lineTokenizer.SetString (readLine in_ivide)
										local objName = lineTokenizer.ReadToken()
										local wtdName = lineTokenizer.ReadToken()
	
										if getnodebyname objName ignoreCase:true != undefined then
										(
											local objNode = getnodebyname objName
											local dummyName = "WTD=" + wtdName
											if getnodebyname dummyName == undefined then
											(
												Dummy pos:[0,0,0] name: dummyName
												
												objNode.parent = getnodebyname dummyName
											) else
											(
												objNode.parent = getnodebyname dummyName
											)
										)
										if objName == "end" then exit
									)
								)
								"tree":
								(
								)
								"path":
								(
								)
								"tanm":
								(
								)
								"mlo":
								(
								)
								"amat":
								(
								)
								"txdp":
								(
								)
								"end":
								(
								)
							)
						)
					)
				)
			)
		)
	)--end rollout
	createDialog iv_hierarch_obj_by_wtd_rollout 270 150
)