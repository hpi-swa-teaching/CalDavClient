as yet unclassified
testCalendarsEqual
	
	self assert: (testCalendar1 ~= testCalendar2) description: 'different calendars should never be equal'.
	self assert: (testCalendar1 = testCalendar1) description: 'the same calendar should be equal to itself'