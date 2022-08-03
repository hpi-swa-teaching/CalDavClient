actions
pickEndDateAndTime

	| datePicker |
	
	datePicker := SCMDatePicker
		openForDialog: self
		color: Color sky
		label: self endDatePickerLabelText.
	datePicker
		when: #dateChanged 
		send: #updateEndDateAndTime: 
		to: self.
	self windows add: datePicker owner