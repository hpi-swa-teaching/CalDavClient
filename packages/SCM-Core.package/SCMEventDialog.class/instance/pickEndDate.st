actions
pickEndDate

	| datePicker |
	
	datePicker := SCMDatePicker
		openForDialog: self
		color: Color sky
		label: self endDatePickerLabelText.
	datePicker
		when: #dateChanged 
		send: #updateEndDate: 
		to: self.
	self windows add: datePicker owner