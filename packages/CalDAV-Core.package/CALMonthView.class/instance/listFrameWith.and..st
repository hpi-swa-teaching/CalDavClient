as yet unclassified
listFrameWith: aRow and: aColumn

	| x y height width |
	
	width := self monthViewFrame width / 7.
	height := self monthViewFrame height / 6.
	x := self monthViewFrame left + ((aColumn - 1) * width).
	y := self monthViewFrame top + ((aRow - 1) * height).
	
	^ (x @ y) corner: (x+width) @ (y + height)
	
	