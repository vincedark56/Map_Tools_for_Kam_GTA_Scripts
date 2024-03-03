fn renameMats objs = if objs.count != 0 do
(
	local matClasses = #(Arch___Design__mi, Standard, GTA_Mtl)
	local selMats = #()
	for c in matClasses do
	(
		for o in objs where o.mat != null do (join selMats (getClassInstances c target:o))
	)
	if selMats.count != 0 do
	(
		for m in selMats do
		(
			case of
			(
				(isProperty m #diff_color_map): if isKindOf (map = getProperty m #diff_color_map) textureMap do m.name = map.name
				(isProperty m #diffuseMap): if isKindOf (map = getProperty m #diffuseMap) textureMap do m.name = getFilenameFile map.filename
				(isProperty m #colormap): if isKindOf (map = getProperty m #colormap) textureMap do m.name = getFilenameFile map.filename
			)
		)
	) ; free selMats
)
renameMats selection