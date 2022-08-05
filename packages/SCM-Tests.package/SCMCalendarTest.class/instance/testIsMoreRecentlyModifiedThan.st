testing
testIsMoreRecentlyModifiedThan

	| newerCalendar |
	
	newerCalendar := SCMCalendar newNamed: 'stinky' withDefaultColor: Color brown.
	newerCalendar lastModified: self calendar lastModified +1.
	self assert: (newerCalendar isMoreRecentlyModifiedThan: self calendar)
