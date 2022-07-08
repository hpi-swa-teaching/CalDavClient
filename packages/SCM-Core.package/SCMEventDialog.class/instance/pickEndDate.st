actions
pickEndDate

	| datePicker |
	
	datePicker := SCMDatePicker 
		openForDialog: self 
		color: Color paleGreen 
		label: 'Pick End Date'.
	self windows add: datePicker owner.
	datePicker 
		when: #dateChanged 
		send: #updateEndDate: 
		to: self