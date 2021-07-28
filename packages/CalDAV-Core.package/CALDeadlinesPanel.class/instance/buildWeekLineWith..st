toolbuilder
buildWeekLineWith: aBuilder

	| weekLine |
	
	weekLine := OrderedCollection new.
	0 to: 52 do: [:each | weekLine add: (self buildWeekLineNumber: each with: aBuilder)].
	^ weekLine