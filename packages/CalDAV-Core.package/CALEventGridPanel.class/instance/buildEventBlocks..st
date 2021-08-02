event block layouting
buildEventBlocks: aBuilder

	| eventBlocks |
	
	eventBlocks := (self app eventsIn: self firstDay) collect: [:each | self getEventBlockFor: each].
	eventBlocks sort.
	^ self layoutEventBlocksIn: eventBlocks with: aBuilder