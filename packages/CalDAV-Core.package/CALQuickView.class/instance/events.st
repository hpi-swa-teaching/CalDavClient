toolbuilder
events

	| eventCollection |
	
	eventCollection := OrderedCollection new.
	0 to: 365 do: [:day | eventCollection addAll:
		(self app eventNamesAndDatesIn: (self date addDays: day))].
	^ self filterOut15EventsIn: eventCollection