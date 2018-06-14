as yet unclassified
buildDayLineWith: aBuilder

	| textFields |
	
	textFields := OrderedCollection new.
	0 to: 6 do: [ :each | textFields add: (self buildDayLineNumber: each with: aBuilder)].
	^ textFields