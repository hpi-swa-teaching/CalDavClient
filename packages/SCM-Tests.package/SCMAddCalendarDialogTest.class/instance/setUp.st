running
setUp

	self calendar: (SCMMockCalendar
		newNamed: 'initial name' withDefaultColor: Color red).
	
	self dialog: (SCMAddCalendarDialog
		createWith: SCMMockCalendarRepository get)