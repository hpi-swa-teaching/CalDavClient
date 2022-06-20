as yet unclassified
testLoadEvent

	| testManager|
	self assert: (SCMCalendar calendarDirectory fileExists: self demoEvent title) = false.
	self demoCalendar addEvent: self demoEvent.
	self subject saveToDisk: demoCalendar.
	
	testManager := SCMCalendarManager new.

	testManager loadFromDisk: self demoCalendar.

	self assert: (testManager extractEventsFrom: self demoCalendar name) size = 1.
	self assert: (testManager extractEventsFrom: self demoCalendar name) first = self demoEvent