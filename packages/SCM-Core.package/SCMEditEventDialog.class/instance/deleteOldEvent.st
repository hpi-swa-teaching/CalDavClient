actions
deleteOldEvent

	self calendarList hasEditableCalendars ifTrue:
		[self oldEvent calendar deleteEvent: self oldEvent.
		self close]