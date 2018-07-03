accessing
eventNames

	 ^ self selectedCalendar events collect: [ :each|each title, '   ', each dateAndTimeString]