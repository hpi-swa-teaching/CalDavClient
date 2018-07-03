initialize
initialize 
	
	self 
		calendars: OrderedCollection new;
		addCalendar: (CALCalendar withName: 'Privat');
		restoreCalendars;
		monthPanel: (CALMonthPanel new
			parent: self)