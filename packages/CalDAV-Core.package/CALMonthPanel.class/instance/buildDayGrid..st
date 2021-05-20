toolbuilder
buildDayGrid: aBuilder
	
	fields := OrderedCollection new.
	self fillMonth.
	1 to: 6 do: [ :row |
		 1 to: 7 do: [ :column | fields add: (self buildDayWith: aBuilder row: row column: column).
		]
	].
	^ fields