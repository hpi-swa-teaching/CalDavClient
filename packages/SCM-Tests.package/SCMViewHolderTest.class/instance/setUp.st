running
setUp

	self demoCalendar: (SCMCalendar newNamed: 'demoCalendar' withDefaultColor: Color turquoise).
	self demoEvents do: [:each | self demoCalendar addEvent: each].
	self wantsToTest: (SCMViewHolder createWith: SCMCalendarRepository getDummy).
	self subject calendarRepository addCalendar: self demoCalendar.
	self subject selectedDate: self demoDate