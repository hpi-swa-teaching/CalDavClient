accessing
events

	| events |
	events:= OrderedCollection new.
	self date ifNotNil: [
		events addAll: (self parent eventsIn: self date).
		].
	^ events
	