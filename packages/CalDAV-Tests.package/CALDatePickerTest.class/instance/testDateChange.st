testing
testDateChange

	datePicker date: Date tomorrow.
	self assert: datePicker date = Date tomorrow.
	self assert: self date = datePicker date start