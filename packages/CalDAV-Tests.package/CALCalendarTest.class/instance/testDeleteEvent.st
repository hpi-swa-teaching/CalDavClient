as yet unclassified
testDeleteEvent
	| entry  calendar |
	entry := CALEvent new.
	calendar := CALCalendar new.
	calendar addEvent: entry.
	calendar deleteEvent: entry.
	self assert: (calendar events includes: entry)not