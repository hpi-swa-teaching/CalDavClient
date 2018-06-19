initialize
initialize 
	
	self 
		calendars: OrderedCollection new;
		addCalendar: (CALCalendar withName: 'Privat');
		restoreCalendars;
		monthPane: CALMonthPane new.
		
	self monthPane parent: self.