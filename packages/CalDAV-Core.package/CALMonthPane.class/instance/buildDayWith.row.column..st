toolbuilder
buildDayWith: aBuilder row: aRow column: aColumn

	| height width x y frame model |
	
	model := self days at: (aRow - 1)*7 + aColumn.
	width := 1 / 7.
	height := 1 / 6.
	x := self monthViewFrame left + ((aColumn - 1) * width).
	y := self monthViewFrame top + ((aRow - 1) * height).
	frame := x @ y corner: (x + width) @ (y + height).
	^ model buildInFrame: frame with: aBuilder
	 