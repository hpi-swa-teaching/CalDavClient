as yet unclassified
activeEvents

	| s |
	s := SortedCollection new.
	self calendars do:
		[:calendar | s addAll: calendar events].
	^ s