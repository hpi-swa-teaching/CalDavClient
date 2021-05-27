as yet unclassified
events

	| events |
	
	events:= OrderedCollection new.
	self date ifNotNil: [
		events addAll: (self app eventsIn: self date).
		].
	^ events
	