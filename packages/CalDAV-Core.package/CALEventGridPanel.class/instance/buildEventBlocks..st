event block layouting
buildEventBlocks: aBuilder

	| eventBlocks |
	
	eventBlocks := (self app eventsIn: self day) collect: [ :each | self getEventBlockFor: each].
	"sort events first by start time and then by end time"
	eventBlocks sort.
	^ self layoutEventBlocksIn: eventBlocks with: aBuilder