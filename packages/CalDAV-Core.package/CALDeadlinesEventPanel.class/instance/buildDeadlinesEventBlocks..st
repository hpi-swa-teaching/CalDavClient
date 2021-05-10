as yet unclassified
buildDeadlinesEventBlocks: aBuilder

	| eventBlocks |
	"eventBlocks := OrderedCollection new.
	eventBlocks add: (1 to: 7 do:
		[:each|(self app eventsIn: (self days at: each)) 
			collect: [:other | self getEventBlockFor: other]])."
	"sort events first by start time and then by end time"
	eventBlocks := ((self app eventsIn: (self days at: 1)) collect: [ :each | self getEventBlockFor: each]).
	((self app eventsIn: (self days at: 2)) collect: [ :each | self getEventBlockFor: each]) do: [:each| eventBlocks add: each].
	((self app eventsIn: (self days at: 3)) collect: [ :each | self getEventBlockFor: each]) do: [:each| eventBlocks add: each].
	((self app eventsIn: (self days at: 4)) collect: [ :each | self getEventBlockFor: each]) do: [:each| eventBlocks add: each].
	((self app eventsIn: (self days at: 5)) collect: [ :each | self getEventBlockFor: each]) do: [:each| eventBlocks add: each].
	((self app eventsIn: (self days at: 6)) collect: [ :each | self getEventBlockFor: each]) do: [:each| eventBlocks add: each].
	((self app eventsIn: (self days at: 7)) collect: [ :each | self getEventBlockFor: each]) do: [:each| eventBlocks add: each].
	eventBlocks sort.
	^ self layoutDeadlinesEventBlocksIn: eventBlocks with: aBuilder