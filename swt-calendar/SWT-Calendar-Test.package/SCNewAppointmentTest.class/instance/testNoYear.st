testing
testNoYear

	mockDialog fillOutAppointmentDialogWithYear: '' Month: 'March' Day: '3' Hour: '20' Minute: '0'.

	self assert: mockDialog filterDateAndTime = false.