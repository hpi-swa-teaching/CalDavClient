actions
pickBeginDate

	| datePicker |
	
	datePicker := SCMDatePicker 
		openForDialog: self 
		color: Color sky 
		label: 'Pick Begin Date'.
	self windows add: datePicker owner.
	datePicker 
		when: #dateChanged 
		send: #beginDateChanged: 
		to: self