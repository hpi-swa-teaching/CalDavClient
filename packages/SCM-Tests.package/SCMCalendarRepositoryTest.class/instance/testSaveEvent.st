as yet unclassified
testSaveEvent

	self assert: (SCMCalendar calendarDirectory fileExists: self demoEvent title) = false.
	
	self demoCalendar addEvent: self demoEvent.
	
	self subject storeAllCalendars.
	self assert: (SCMCalendar calendarDirectory fileExists: self demoCalendar fullTitle).
	
	"to do: find calendar by title not by index of collection"
	self assert: (self subject calendars first events) size equals: 1.
	self assert: (self  subject calendars first events first) equals: self demoEvent