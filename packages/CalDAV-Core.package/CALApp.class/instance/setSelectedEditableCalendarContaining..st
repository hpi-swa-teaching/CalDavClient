event management
setSelectedEditableCalendarContaining: aCALEvent

	| calendar |
	
	calendar := self findCalendarFor: aCALEvent.
	self calendarIndex: (self editableCalendars indexOf: calendar)