testing
testSelectDate


	self datePicker openInWindow.
	self datePicker selectDate: Date today.
	
	self assert: (self datePicker date = Date today)