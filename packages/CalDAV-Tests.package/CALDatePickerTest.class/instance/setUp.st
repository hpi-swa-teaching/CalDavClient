running
setUp

	datePicker := CALDatePicker new.
	datePicker when: #dateChanged send: #dateChanged: to: self