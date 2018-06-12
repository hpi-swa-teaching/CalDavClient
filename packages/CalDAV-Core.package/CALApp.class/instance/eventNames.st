accessing
eventNames

	 ^ self selectedCalendar events collect: [:event | (CALEvent dateString: (event begin)), ' ', (CALEvent timeString: (event begin)), '  -  ', (CALEvent dateString: (event end)), ' ', (CALEvent timeString: (event end)), ' :  ' ,event title]