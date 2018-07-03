initialize
initialize 
	
	self 
		calendars: OrderedCollection new;
		addCalendar: (CALCalendar withName: 'Privat');
		restoreCalendars;
		monthPane: CALMonthPanel new.
	self monthPane parent: self.