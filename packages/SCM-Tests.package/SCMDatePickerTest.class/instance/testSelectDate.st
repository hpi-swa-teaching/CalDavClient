testing
testSelectDate

	self datePicker selectDate: Date today.
	self assert: self datePicker date equals: Date today