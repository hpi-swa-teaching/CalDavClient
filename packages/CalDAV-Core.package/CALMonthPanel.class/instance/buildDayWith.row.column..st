toolbuilder
buildDayWith: aBuilder row: aRow column: aColumn

	| x y frame model |
	
	model := self days at: (aRow - 1) * 7 + aColumn.
	x := self monthViewFrame left + ((aColumn - 1) * self dayWidth).
	y := self monthViewFrame top + ((aRow - 1) * self dayHeight).  
	frame := x @ y corner: (x + self dayWidth) @ (y + self dayHeight).
	^ model buildInFrame: frame with: aBuilder