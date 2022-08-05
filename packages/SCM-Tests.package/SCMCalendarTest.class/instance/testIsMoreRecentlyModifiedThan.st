testing
testIsMoreRecentlyModifiedThan

	| newerCalendar |
	
	newerCalendar := SCMCalendar newNamed: 'stinky' withDefaultColor: Color brown.
	self assert: (newerCalendar isMoreRecentlyModifiedThan: self calendar)
