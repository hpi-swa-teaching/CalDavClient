running
setUp

	self eventDialog: (SCMAddEventDialog openWith: SCMMockCalendarRepository get).
	self datePicker: (SCMDatePicker
		openForDialog: self eventDialog model color: self defaultColor label: self defaultLabel).
	self datePicker when: #dateChanged send: #dateChanged: to: self