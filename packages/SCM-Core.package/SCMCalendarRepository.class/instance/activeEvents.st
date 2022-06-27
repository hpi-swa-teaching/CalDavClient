as yet unclassified
activeEvents

	| s |
	s := SortedCollection new.
	self activeCalendars do:
		[:calendar | s addAll: calendar events].
	^ s