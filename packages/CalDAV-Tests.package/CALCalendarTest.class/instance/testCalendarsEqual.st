testing
testCalendarsEqual
	
	self assert: (self demoCalendar1 ~= self demoCalendar2) description: 'different calendars should never be equal'.
	self assert: (self demoCalendar1 = self demoCalendar1) description: 'the same calendar should be equal to itself'