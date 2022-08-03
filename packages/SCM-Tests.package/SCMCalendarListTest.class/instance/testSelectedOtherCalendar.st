testing
testSelectedOtherCalendar

	self assert: (self demoCalendarList selectedOtherCalendar: 0) equals: false.
	self assert: (self demoCalendarList selectedOtherCalendar: 1) equals: true