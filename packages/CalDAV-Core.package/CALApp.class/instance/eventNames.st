accessing
eventNames

	 ^ self selectedCalendar events collect: [:event | (CALEvent dateString: (event begin)), '   ', (CALEvent timeString: (event begin)), '   ' ,event title]