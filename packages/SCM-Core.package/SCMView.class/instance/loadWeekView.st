actions
loadWeekView

	self addMorph: ((self viewTypes at: #week)
		createWithEvents: (self calendarManager activeEventsInWeek)
		andStartDate: ((self startDate subtractDays: 1) asWeek asDate next))