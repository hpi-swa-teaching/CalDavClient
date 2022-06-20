info retrieval
activeEvents

	| s |
	s := SortedCollection new.
	self activeCalendars do:
		[:calendar | s addAll: calendar events].
	^ s