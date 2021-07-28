toolbuilder
buildWeekDayOrderWith: aBuilder day: aWeekday

	| x y frame |
	
	x := self monthViewFrame left + ((aWeekday - 1) * self weekdayWidth).
	y := self monthViewFrame top.
	frame := x @ y corner: (x + self weekdayWidth) @ (y + self weekdayHeight).
	^ self buildWeekdayWith: aBuilder day: aWeekday frame: frame