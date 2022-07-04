running
setUp

	self datePicker: SCMDatePicker new.
	self datePicker when: #dateChanged send: #dateChanged: to: self