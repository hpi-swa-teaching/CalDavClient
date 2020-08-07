testing
testStupidHour

	mockDialog fillOutAppointmentDialogWithYear: '2020' Month: 'March' Day: '18' Hour: 'hello' Minute: '0'.

	self assert: mockDialog filterDateAndTime = false.