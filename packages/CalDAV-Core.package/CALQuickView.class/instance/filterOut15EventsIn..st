as yet unclassified
filterOut15EventsIn: eventBlocks 
	| filteredEventBlock|
	filteredEventBlock := OrderedCollection new.
	1 to: {eventBlocks size . 15} min do: [:each| filteredEventBlock add: (eventBlocks at: each)].
	^ filteredEventBlock
