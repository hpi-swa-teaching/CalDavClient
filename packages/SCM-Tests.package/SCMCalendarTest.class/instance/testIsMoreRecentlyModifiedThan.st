testing
testIsMoreRecentlyModifiedThan

	| newerCalendar |
	
	newerCalendar := SCMCalendar newNamed: 'stinky' withDefaultColor: Color brown.
	self assert: (newerCalendar isMoreRecentlyModifiedThan: self calendar).
	self calendar addEvent: self createDummyEvent.
	self assert: (self calendar isMoreRecentlyModifiedThan: newerCalendar).