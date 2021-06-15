(
	for obj in objects do
	(
		bb = (obj.max - obj.min)
		smax = 512.0
		if bb[1] > smax or bb[2] > smax or bb[3] > smax  do
		(
			print obj.name
		)
	)
)
