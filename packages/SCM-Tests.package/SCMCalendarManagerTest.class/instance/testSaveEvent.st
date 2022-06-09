as yet unclassified
testSaveEvent

	self assert: (SCMCalendar calendarDirectory fileExists: self demoEvent title) = false.
	
	self demoCalendar addEvent: self demoEvent.
	
	self demoCalendar saveToDisk.
	self assert: (SCMCalendar calendarDirectory fileExists: self demoCalendar name).
	
	self assert: (self subject extractEventsFrom: self demoCalendar name) size = 1.
	self assert: (self subject extractEventsFrom: self demoCalendar name) first title = self demoEvent title.