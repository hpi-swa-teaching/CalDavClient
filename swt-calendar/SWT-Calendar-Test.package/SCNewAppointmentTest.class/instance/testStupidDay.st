testing
testStupidDay

	mockDialog fillOutAppointmentDialogWithYear:'2020' Month:'March' Day:'hello' Hour:'20' Minute:'0'.

	self assert: mockDialog filterDateAndTime = false.