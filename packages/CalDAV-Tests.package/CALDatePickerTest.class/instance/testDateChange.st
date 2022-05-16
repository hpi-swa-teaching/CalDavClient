testing
testDateChange

	self datePicker date: Date tomorrow.
	self assert: self datePicker date = Date tomorrow.
	self assert: self date = self datePicker date start