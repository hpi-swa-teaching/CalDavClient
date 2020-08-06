testing
testWrongDay

	mockDialog fillOutAppointmentDialogWithYear:'2020' Month:'March' Day:'32' Hour:'20' Minute:'0'.

	self assert: mockDialog filterDateAndTime = false.