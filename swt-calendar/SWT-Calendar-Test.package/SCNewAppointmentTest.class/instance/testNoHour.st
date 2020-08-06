testing
testNoHour

	mockDialog fillOutAppointmentDialogWithYear:'2020' Month:'March' Day:'18' Hour:'' Minute:'0'.

	self assert: mockDialog filterDateAndTime = false.