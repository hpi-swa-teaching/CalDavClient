accessing
eventNames

	 ^ self selectedCalendar events 
		collect: [ :each | (CALEvent dateString: (each begin)), '   ', (CALEvent timeString: (each begin)), '   ' ,each title]