as yet unclassified
layoutDeadlinesEventBlocksIn: eventBlocks with: aBuilder
	| eventGrids |
	self numberOfEvents: eventBlocks size.
	eventGrids := OrderedCollection new.
	self eventCounter: 0.
	 eventBlocks do: [ :each | eventGrids add: (self buildEventNumber: each with: aBuilder). self eventCounter: (self eventCounter + 1).].
	^ eventGrids
