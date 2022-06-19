event management
setSelectedEditableCalendarContaining: aCALEvent

	self calendarIndex: (self editableCalendars indexOf: (self findCalendarFor: aCALEvent))