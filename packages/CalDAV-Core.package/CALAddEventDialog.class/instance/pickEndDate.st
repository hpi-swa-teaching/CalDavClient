actions
pickEndDate

	| datePicker |
	datePicker := CALDatePicker new.
	datePicker openInWindow.
	datePicker when: #dateChanged send: #endDateChanged: to: self.