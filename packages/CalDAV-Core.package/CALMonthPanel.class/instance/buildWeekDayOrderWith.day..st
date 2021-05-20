toolbuilder
buildWeekDayOrderWith: aBuilder day: aWeekday

	| height width x y frame |
	
	width := 1 / 7.
	height := 1 / 8.
	x := self monthViewFrame left + ((aWeekday - 1) * width).
	y := self monthViewFrame top.
	frame := x @ y corner: (x + width) @ (y + height).
	^ self buildWeekdayWith: aBuilder day: aWeekday frame: frame
	 