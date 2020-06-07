running
setUp

	self datePicker: CALDatePicker new.
	self datePicker when: #dateChanged send: #dateChanged: to: self