testing
testDateChange

	self datePicker date: Date tomorrow.
	self assert: self datePicker date equals: Date tomorrow.
	self assert: self date equals: self datePicker date start