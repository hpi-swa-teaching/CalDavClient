actions
pickBeginDate

	| datePicker |
	
	datePicker := SCMDatePicker
		openForDialog: self
		color: Color sky
		label: self beginDatePickerLabelText.
	datePicker
		when: #dateChanged 
		send: #updateBeginDateAndTime: 
		to: self.
	self windows add: datePicker owner