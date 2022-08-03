running
setUp

	self demoCalendar: (SCMMockCalendar newNamed: 'demoCalendar' withDefaultColor: Color turquoise).
	self demoEvents do: [:each | self demoCalendar addEvent: each].
	self wantsToTest: (SCMViewHolder createWith: SCMMockCalendarRepository get).
	self subject calendarRepository addCalendar: self demoCalendar.
	self subject selectedDate: self demoDate