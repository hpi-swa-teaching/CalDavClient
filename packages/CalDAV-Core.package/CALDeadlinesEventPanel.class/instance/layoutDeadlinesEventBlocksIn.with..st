as yet unclassified
layoutDeadlinesEventBlocksIn: eventBlocks with: aBuilder
	| eventGrids |
	
	eventGrids := OrderedCollection new.
	1 to: eventBlocks length do: [ :each | eventGrids add: (self buildEventNumber: each with: aBuilder)].
	^ eventGrids
