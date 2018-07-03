toolbuilder
textFrameWith: aRow and: aColumn

	| x y height width textHeight |
	
	width := self monthViewFrame width / 7.
	height := self monthViewFrame height / 6.
	textHeight := height * (1 - self relativeDayListHeight).
	x := self monthViewFrame left + ((aColumn - 1) * width).
	y := self monthViewFrame top + ((aRow - 1) * height).
	^ (x @ y) corner: (x + width) @ (y + textHeight)
	
	