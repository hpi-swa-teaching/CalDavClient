as yet unclassified
buildEventBlocks: aBuilder

	| eventBlocks columns buttons |
	
	buttons := OrderedCollection new.
	eventBlocks := (self parent eventsIn: self day) collect: [ :each | self buildEventBlockFor: each].
	"sort events first by start time and then by end time"
	eventBlocks sort.	
	columns := OrderedCollection new.	
	eventBlocks do: [ :each | 
		| lastEventEnding |
		"check if event group is complete"
		(lastEventEnding isNil not and: [each event begin >= lastEventEnding])
			ifTrue: [buttons addAll: (self getButtonsForEventGroup: columns). columns := OrderedCollection new. lastEventEnding := nil].
		"try to place event in existing columns"
		self tryPlacing: each in: columns.
		"create new column if needed"
		each placed ifFalse: [columns add: OrderedCollection new. columns last add: each].
		"remember latest event end time of current group"
		(lastEventEnding isNil or: [each event end > lastEventEnding])
			ifTrue: [lastEventEnding := each event end]].
	columns isEmpty not
		ifTrue: [buttons addAll: (self getButtonsForEventGroup: columns)].
	^ buttons