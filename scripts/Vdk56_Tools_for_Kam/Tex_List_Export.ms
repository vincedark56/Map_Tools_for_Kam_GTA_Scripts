(
	local mapfiles=#()
	fn addmap mapfile =
	(
		local mapfileN = getFilenameFile mapfile
		local index = finditem mapfiles mapfileN
		if index == 0 do append mapfiles mapfileN
 
	) 
	enumeratefiles addmap #missing
	sort mapfiles
	clearListener()
	for mapfile in mapfiles do print (mapfile as string)
)
