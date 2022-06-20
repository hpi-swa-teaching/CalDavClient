as yet unclassified
testSaveEvent

	self assert: (SCMCalendar calendarDirectory fileExists: self demoEvent title) = false.
	
	self demoCalendar addEvent: self demoEvent.
	
	self subject saveToDisk: self demoCalendar.
	self assert: (SCMCalendar calendarDirectory fileExists: self demoCalendar myName).
	
	self assert: (self subject extractEventsFrom: self demoCalendar myName) size = 1.
	self assert: (self subject extractEventsFrom: self demoCalendar myName)
		first =  self demoEvent