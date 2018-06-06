as yet unclassified
listFrameWith: aRow and: aColumn

	| x y height width listHeight|
	
	width := self monthViewFrame width / 7.
	height := self monthViewFrame height / 6.
	listHeight := height * self relativeDayListHeight.
	x := self monthViewFrame left + ((aColumn - 1) * width).
	y := self monthViewFrame top + ((aRow - 1) * height) + height - listHeight.
	
	^ (x @ y) corner: (x+width) @ (y + listHeight)
	
	