actions
loadWeekView

	| a b |
	
	a := DateAndTime today asWeek asDate next.
	b := self startDate asWeek asDate next.
	
	
	self addMorph: ((self viewTypes at: #week)
		createWithEvents: (self calendarManager activeEventsInWeek)
		andStartDate: b)
		
	
"(self startDate asWeek asDate next)

DateAndTime today asWeek asDate next"