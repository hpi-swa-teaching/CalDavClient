event management
setSelectedEditableCalendarContaining: anEvent

	| calendar |
	
	calendar := self findCalendarFor: anEvent.
	self calendarIndex: (self editableCalendars indexOf: calendar)