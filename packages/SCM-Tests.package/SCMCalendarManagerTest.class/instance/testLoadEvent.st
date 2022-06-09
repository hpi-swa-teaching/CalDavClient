as yet unclassified
testLoadEvent

	"todo: first reorganize saveToDisk to manager; then adjust test"

	| testManager|
	self assert: (SCMCalendar calendarDirectory fileExists: self demoEvent title) = false.
	self demoCalendar addEvent: self demoEvent.
	self demoCalendar saveToDisk.
	
	testManager := SCMCalendarManager new.

	
	"der manager sollte den Calendar sichern (nicht der calendar)
	testManager save: self demoCalendar"

	
	
	
	self assert: (self subject extractEventsFrom: self demoCalendar name) size = 1.
	self assert: (self subject extractEventsFrom: self demoCalendar name) first title = self demoEvent title.