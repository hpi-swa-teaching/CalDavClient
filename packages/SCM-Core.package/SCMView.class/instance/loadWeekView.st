loading
loadWeekView

	self addMorph: ((self viewTypes at: #week)
<<<<<<< HEAD
		createWithEvents: (self calendarManager activeEventsInWeek)
		andStartDate: ((self startDate subtractDays: 1) asWeek asDate next))
=======
		createWithEvents: self retrieveWeekEvents
		andStartDate: self monday)
>>>>>>> 74ecfc1 (refactor SCMView class to fit idioms and stuileguide)
