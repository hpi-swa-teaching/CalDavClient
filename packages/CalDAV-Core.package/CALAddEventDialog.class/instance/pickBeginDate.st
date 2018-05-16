actions
pickBeginDate

	| datePicker |
	datePicker := CALDatePicker new.
	datePicker openInWindow.
	datePicker when: #dateChanged send: #beginDateChanged: to: self with: datePicker date start.