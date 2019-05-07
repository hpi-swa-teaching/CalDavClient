toolbuilder
buildDayGridsWith: aBuilder

	| dayGrids |
	
	dayGrids := OrderedCollection new.
	1 to: 7 do: [ :each | dayGrids add: (self buildDayGridNumber: each with: aBuilder)].
	^ dayGrids