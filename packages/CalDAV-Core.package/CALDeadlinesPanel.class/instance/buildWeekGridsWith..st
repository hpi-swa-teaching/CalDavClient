as yet unclassified
buildWeekGridsWith: aBuilder

	| weekGrids |
	
	weekGrids := OrderedCollection new.
	0 to: 2 do: [ :each | weekGrids add: (self buildWeekLineNumber: each with: aBuilder)].
	^ weekGrids