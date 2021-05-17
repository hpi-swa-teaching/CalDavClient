as yet unclassified
layoutDeadlinesEventBlocksIn: eventBlocks with: aBuilder
	| eventGrids filteredEventBlock|
	self numberOfEvents: eventBlocks size.
	eventGrids := OrderedCollection new.
	filteredEventBlock := OrderedCollection new.
	filteredEventBlock := eventBlocks select: [:each | '*deadline*'  match: each event title].
	self eventCounter: 0.
	 filteredEventBlock do: [ :each | eventGrids add: (self buildEventNumber: each with: aBuilder). self eventCounter: (self eventCounter + 1).].
	^ eventGrids
