utility Vdk56_Tools_for_Kam "Vdk56 Tools for Kam" (
	group "Main"
	(
		button mat_to_kam_btn "Convert to Kam Material" width:180 align:#center
		button mltobjpropgen_btn "Multiobject Prop Generator" width:180 align:#center
		button obj_name_tool_btn "Object Name Tool" width:180 align:#center
	)
	group "Tools"
	(
		button exp_mtex_list_btn "Export Missing Tex List" width:180 align:#center
		button prt_excd_dimensions_btn "Print Exceed Dimensions" width:180 align:#center
		button iv_hierarch_obj_wtd_btn "IV Hierarch OBJ by WTD" width:180 align:#center
	)
	group ""
	(
		button about_btn "About" width:180 align:#center
	)
	on mat_to_kam_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\Conv_Mat_to_Kam.ms") quiet:true   )
		catch messagebox "Please re-install my Convert to Kam Material script!" title:"Convert to Kam Material script"
	)
	on mltobjpropgen_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\Multiobject_Prop_Generator.ms") quiet:true   )
		catch messagebox "Please re-install my Multiobject Prop Generator script!" title:"Multiobject Prop Generator script"
	)
	on obj_name_tool_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\Obj_Name_Tool.ms") quiet:true   )
		catch messagebox "Please re-install my Object Names Tool script!" title:"Object Name Tool script"
	)
	on exp_mtex_list_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\Tex_List_Export.ms") quiet:true   )
		catch messagebox "Please re-install my Rename Export Missing Tex List script!" title:"Export Missing Tex List"
	)
	on prt_excd_dimensions_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\Print_Exceed_Dimensions.ms") quiet:true   )
		catch messagebox "Please re-install my Print Exceed Dimensions script!" title:"Print Exceed Dimensions"
	)
	on iv_hierarch_obj_wtd_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\IV_Hierarch_OBJ_by_WTD.ms") quiet:true   )
		catch messagebox "Please re-install my About script!" title:"IV Hierarch OBJ by WTD"
	)
	on about_btn pressed do
	(
		try ( fileIn (scriptspath+"\\Vdk56_Tools_for_Kam\\About_vdk56_script.ms") quiet:true   )
		catch messagebox "Please re-install my About script!" title:"About script"
	)
)
openUtility Vdk56_Tools_for_Kam
