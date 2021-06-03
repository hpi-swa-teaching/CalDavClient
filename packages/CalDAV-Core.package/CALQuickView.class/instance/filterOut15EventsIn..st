as yet unclassified
filterOut15EventsIn: eventBlocks 
	| filteredEventBlock|
	filteredEventBlock := OrderedCollection new.
	1 to: 15 do: [:each| filteredEventBlock add: (eventBlocks at: each)].
	^ filteredEventBlock
