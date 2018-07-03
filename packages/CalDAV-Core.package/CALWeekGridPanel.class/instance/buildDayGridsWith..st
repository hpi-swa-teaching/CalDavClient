as yet unclassified
buildDayGridsWith: aBuilder

	| dayGrids |
	
	dayGrids := OrderedCollection new.
	0 to: 6 do: [ :each | dayGrids add: (self buildDayGridNumber: each with: aBuilder)].
	^ dayGrids