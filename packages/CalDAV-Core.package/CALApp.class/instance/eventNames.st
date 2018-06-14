accessing
eventNames

	 ^ self selectedCalendar events collect: [ :each| each dateAndTimeString,  ' :  ' , each title]