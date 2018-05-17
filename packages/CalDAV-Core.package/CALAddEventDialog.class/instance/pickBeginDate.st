actions
pickBeginDate

	| datePicker |
	
	datePicker := CALDatePicker openForDialog: self.
	datePicker when: #dateChanged send: #beginDateChanged: to: self.