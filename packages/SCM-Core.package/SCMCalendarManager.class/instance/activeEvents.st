as yet unclassified
activeEvents

	| s |
	s := SortedCollection new
		sortBlock: [:a :b | a begin < b begin];
		yourself.
	self calendars do:
		[:calendar | s addAll: calendar events].
	^ s