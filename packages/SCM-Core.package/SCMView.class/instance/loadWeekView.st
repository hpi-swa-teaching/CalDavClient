actions
loadWeekView

	self addMorph: ((self viewTypes at: #week)
		createWithEvents: (self calendarManager activeEventsInWeek)
		andStartDate: self startDate asWeek asDate next)