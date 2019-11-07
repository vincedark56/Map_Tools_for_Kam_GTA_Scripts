-- maxscript renBignames
(
 rollout rename_rollout "Rename Big Object Names"
 (
	fn object_name n = (
		name_length = n.count
		n_rm_first = name_length - 18
		if name_length > 19 do (n = substring n n_rm_first -1)
		
		n
	)
	  button rename_them "Rename Selected Objects"
	  on rename_them pressed do
  (
    for i in selection do i.name = object_name i.name
  )--end on
  label lab1 "Rename objects to max name legth 19"
  label lab2 "Due to collision name limit"
 )--end rollout
createDialog rename_rollout 230 80
)