initialization
loadCalendars

	self calendarManager: SCMCalendarManager new. "persistence needed"
	self calendarManager addCalendars: {SCMCalendar new name: 'Privat'; yourself . SCMCalendar new name: 'Uni'; yourself} asOrderedCollection