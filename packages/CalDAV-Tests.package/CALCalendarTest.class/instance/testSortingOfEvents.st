as yet unclassified
testSortingOfEvents
	| first second calendar |
	first := CALEvent new.
	first begin: (DateAndTime year: 2017 month: 12 day: 24 hour: 17 minute: 30).
	second := CALEvent new.
	second begin: (DateAndTime year: 2018 month: 12 day: 24 hour: 17 minute: 30).
	calendar := CALCalendar new.
	calendar addEvent: second.
	calendar addEvent: first.
	self assert: (calendar events first = first)