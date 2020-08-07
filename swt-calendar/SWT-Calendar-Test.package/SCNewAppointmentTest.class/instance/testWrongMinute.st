testing
testWrongMinute

	mockDialog fillOutAppointmentDialogWithYear: '2020' Month: 'March' Day: '18' Hour: '20' Minute: '62'.

	self assert: mockDialog filterDateAndTime = false.