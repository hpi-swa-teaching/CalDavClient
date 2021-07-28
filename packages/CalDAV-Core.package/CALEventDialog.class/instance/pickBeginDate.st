actions
pickBeginDate

	| datePicker |
	
	datePicker := CALDatePicker 
		openForDialog: self 
		color: Color sky 
		label: 'Pick Begin Date'.
	datePicker 
		when: #dateChanged 
		send: #beginDateChanged: 
		to: self