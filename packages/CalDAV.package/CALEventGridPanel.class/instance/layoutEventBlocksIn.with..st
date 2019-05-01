event block layouting
layoutEventBlocksIn: aCollection with: aBuilder

	| buttons columns |
	
	buttons := OrderedCollection new.
	columns := OrderedCollection new.	
	"layouting algorithm"
	aCollection do: [ :each | 
		| lastEventEnding |
		"get buttons for current event group when complete"
		(self isInConflictWithPreviousEvents: each event with: lastEventEnding)
			ifTrue: [buttons addAll: (self getButtonsForEventGroup: columns with: aBuilder). columns := OrderedCollection new. lastEventEnding := nil].
		"try to place event in existing columns"
		self tryPlacing: each in: columns.
		"create new column if needed"
		each placed ifFalse: [columns add: OrderedCollection new. columns last add: each].
		"remember latest event end time of current group"
		(lastEventEnding isNil or: [each event end > lastEventEnding])
			ifTrue: [lastEventEnding := each event end]].
	"get buttons for last event group if necessary"
	columns isEmpty not
		ifTrue: [buttons addAll: (self getButtonsForEventGroup: columns with: aBuilder)].
	^ buttons