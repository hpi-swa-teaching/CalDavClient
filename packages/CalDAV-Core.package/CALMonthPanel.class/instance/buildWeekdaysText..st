toolbuilder
buildWeekdaysText: aBuilder
	
	fields := OrderedCollection new. 
	1 to: 7 do: [:number | fields add: (self buildWeekDayOrderWith: aBuilder day: number)].
	^ fields 
	 