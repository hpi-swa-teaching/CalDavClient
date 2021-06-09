layouting
layoutDeadlinesEventBlocksIn: eventBlocks 

	| eventGrids filteredEventBlock |
	eventGrids := OrderedCollection new.
	filteredEventBlock := OrderedCollection new.
	eventBlocks ifNotEmpty: [eventGrids addAll: {self weekTitle: eventBlocks. ' '}].
	filteredEventBlock := eventBlocks select: [:each | '*deadline*'  match: each event title].
	 filteredEventBlock do: [:each | eventGrids add: each event title].
	^ eventGrids
