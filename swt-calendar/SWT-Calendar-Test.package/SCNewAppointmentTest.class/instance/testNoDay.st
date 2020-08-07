testing
testNoDay

	mockDialog fillOutAppointmentDialogWithYear: '2020' Month: 'March' Day: '' Hour: '20' Minute: '0'.

	self assert: mockDialog filterDateAndTime = false.