testing
testWrongHour

	mockDialog fillOutAppointmentDialogWithYear:'2020' Month:'March' Day:'3' Hour:'30' Minute:'0'.

	self assert: mockDialog filterDateAndTime = false.