as yet unclassified
setUp

	testCalendar1 := CALCalendar withName: 'cal01'.
	testCalendar2 := CALCalendar withName: 'cal02'.
	testCalendar3 := CALCalendar withName: 'cal03'.
	
	testCalendar1 addEvent: self demoEvent.
	testCalendar2 addEvent: self demoEvent.
	