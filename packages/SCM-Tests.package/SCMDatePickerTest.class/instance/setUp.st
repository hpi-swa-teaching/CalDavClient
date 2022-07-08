running
setUp

	self eventDialog: (SCMAddEventDialog openFor: SCMCalendarRepository new).
	self datePicker: (SCMDatePicker openForDialog: self eventDialog model color: self defaultColor label: self defaultLabel).
	self datePicker when: #dateChanged send: #dateChanged: to: self