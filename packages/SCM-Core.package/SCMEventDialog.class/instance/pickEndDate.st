actions
pickEndDate

	| datePicker |
	
	datePicker := SCMDatePicker 
		openForDialog: self 
		color: Color paleGreen 
		label: 'Pick End Date'.
	datePicker 
		when: #dateChanged 
		send: #endDateChanged: 
		to: self