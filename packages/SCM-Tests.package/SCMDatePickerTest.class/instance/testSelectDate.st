testing
testSelectDate

	self datePicker selectDate: Date today.
	self assert: (self datePicker date = Date today)