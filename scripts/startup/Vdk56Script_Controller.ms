utility Vdk56_Tools_for_Kam "Vdk56 Tools for Kam" (
	group "Main"
	(
		button gimsv_to_kam_btn "GIMSV to Kam Material" width:140 align:#center
		button mltobjpropgen_btn "Multiobject Prop Generator" width:140 align:#center
		button ren_obj_names_btn "Rename Objects Names" width:140 align:#center
	)
	group ""
	(
		button about_btn "About" width:140 align:#center
	)
	on gimsv_to_kam_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\GIMSV_to_Kam_mat.ms") quiet:true   )
		catch messagebox "Please re-install myGIMSV to Kam Material script script!" title:"GIMSV to Kam Material script"
	)
	on mltobjpropgen_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\Multiobject_Prop_Generator.ms") quiet:true   )
		catch messagebox "Please re-install my Multiobject Prop Generator!script" title:"Multiobject Prop Generator script"
	)
	on ren_obj_names_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\Rename_Objects_Names.ms") quiet:true   )
		catch messagebox "Please re-install my Rename Objects Names script!" title:"Rename Objects Names script"
	)
	on about_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\About_vdk56_script.ms") quiet:true   )
		catch messagebox "Please re-install my About script!" title:"About script"
	)
)
