as yet unclassified
eventNames

	 ^ self selectedCalendar events collect: [:event | event dateString, '   ', event timeString, '   ' ,event title]