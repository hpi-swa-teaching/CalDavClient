as yet unclassified
events

	| events |
	
	events:= OrderedCollection new.
	0 to: 365 do: [:day| events addAll:
		(self app eventNamesIn: (self date addDays: day)).
		].
	
	^ self filterOut15EventsIn: events
	