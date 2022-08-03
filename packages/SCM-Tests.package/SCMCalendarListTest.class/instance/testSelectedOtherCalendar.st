testing
testSelectedOtherCalendar

	self assert: (self calendarList selectedOtherCalendar: 0) equals: false.
	self assert: (self calendarList selectedOtherCalendar: 1) equals: true