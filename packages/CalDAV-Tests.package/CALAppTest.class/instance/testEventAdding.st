as yet unclassified
testEventAdding

	| event |
	event := testApp selectedCalendar events first.
	self assert: event title = 'first'.
	self assert: event begin = (DateAndTime year: 2017 month: 12 day: 24 hour: 17 minute: 30).
	event := testApp selectedCalendar events last.
	self assert: event title = 'second'.
	self assert: event begin = (DateAndTime year: 2018 month: 12 day: 24 hour: 17 minute: 30)