toolbuilder
buildDeadlineEvents
	
	| eventBlocks |
	eventBlocks := OrderedCollection new.
	1 to: 7 do: [:day | eventBlocks addAll: 
		((self app eventsIn: (self days at: day)) 
		collect: [:each | self getEventBlockFor: each])].
	 eventBlocks sort.
	^ self layoutDeadlinesEventBlocksIn: eventBlocks