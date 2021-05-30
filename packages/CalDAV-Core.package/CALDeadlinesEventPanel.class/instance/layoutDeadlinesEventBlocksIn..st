as yet unclassified
layoutDeadlinesEventBlocksIn: eventBlocks 
	| eventGrids filteredEventBlock|
	eventGrids := OrderedCollection new.
	filteredEventBlock := OrderedCollection new.
	filteredEventBlock := eventBlocks select: [:each | '*deadline*'  match: each event title].
	 filteredEventBlock do: [ :each | eventGrids add: (each event dateAndTimeString, ' ' , each event title)].
	^ eventGrids
