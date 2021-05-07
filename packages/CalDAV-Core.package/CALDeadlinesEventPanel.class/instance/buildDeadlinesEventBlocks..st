as yet unclassified
buildDeadlinesEventBlocks: aBuilder

	| eventBlocks |
	
	eventBlocks := (self app eventsIn: self week) collect: [ :each | self getEventBlockFor: each].
	"sort events first by start time and then by end time"
	eventBlocks sort.
	^ self layoutDeadlinesEventBlocksIn: eventBlocks with: aBuilder