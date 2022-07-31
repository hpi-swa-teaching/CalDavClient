accessing
activeEvents

	| events |
	
	events := SortedCollection new.
	self activeCalendars do:
		[:calendar | events addAll: calendar events].
	
	^ events