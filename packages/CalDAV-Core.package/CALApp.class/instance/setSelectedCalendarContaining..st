event management
setSelectedCalendarContaining: anEvent

	| calendar |
	
	calendar := self findCalendarFor: anEvent.
	self calendarIndex: (self calendars indexOf: calendar)