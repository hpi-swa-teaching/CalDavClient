as yet unclassified
testAddEvent
	| entry  calendar |
	entry := CALEventTest new.
	calendar := CALCalendar withName: 'testCalendar'.
	calendar addEvent: entry.
	self assert: (calendar events includes: entry)